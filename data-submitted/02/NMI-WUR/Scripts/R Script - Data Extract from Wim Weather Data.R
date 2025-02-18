#Collecting weather data from datasets, for the ALFAM2 database

#Import the necessary packages
library(XLConnect)
library(dplyr)
library(tidyr)
library(lubridate)

#Set the working directory
setwd("C:/Users/svip/Dropbox/ALFAM2/Data/NMI/Weather")

#Import data from weatherfile and display head()
excel.file <- file.path("uurgeg_275_1981-1990.xlsx")
excel.data <- readWorksheetFromFile(excel.file,sheet=1)
head(excel.data)


#Replace all whitespaces with NA
for (n in 3:23){
  excel.data[,n] <- gsub(pattern = " ", replacement = NA, excel.data[,n])
}
head(excel.data)


#Put Weather Station ID in separate column from date
#Remve Weather Station ID from date column
#Using Tidyr package
excel.data <- excel.data %>% separate(STN.YYYYMMDD, c("STN.ID","STN.YYYYMMDD"), sep="\\ ")
head(excel.data)

#THE FOLLOWING CODE IS THE OLD APPROACH. SAME THING, BUT IN 3 LINES INSTEAD!!!
#excel.data <- data.frame(substring(excel.data$STN.YYYYMMDD,1,3),excel.data)
#names(excel.data)[1] <- "STN.ID"
#excel.data$STN.YYYYMMDD <- gsub("269 ", "" , excel.data$STN.YYYYMMDD)

#Correct the STN.YYYYMMDD column using lubridate package
excel.data$HH <- paste0(excel.data$STN.YYYYMMDD," ",excel.data$HH,":","00")
for (n in 2:length(excel.data$STN.ID)) {
  excel.data[n,2] <- excel.data[n-1,3]
}

#Convert all date and timestamps to date objects, using the lubridate package.
excel.data$STN.YYYYMMDD <- ymd_hm(excel.data$STN.YYYYMMDD)
excel.data$HH <- ymd_hm(excel.data$HH)

#Travese throught the excel.data$STN.YYYYMMDD column to find NA Values. Replace with a timestamp.
for (n in 1:length(excel.data$STN.YYYYMMDD)){
  if(is.na(excel.data[n,2]) && !is.na(excel.data[n,3])){
    excel.data[n,2] <- excel.data[n,3]-seconds(3600)
  }
}


#Rename column names such that they actually make sense...
#(I tried using c() to combine the commands. Didn't work.)
excel.data <- rename(excel.data,StartTime = STN.YYYYMMDD, EndTime = HH)

#Create intervals on weather data
excel.data$Intervals <- excel.data$StartTime %--% excel.data$EndTime


#ONE METHOD OF DOING IT, USING BASE R COMMANDS
#names(excel.data)[names(excel.data)=="STN.YYYYMMDD"] <- "StartTime"
#names(excel.data)[names(excel.data)=="HH"] <- "EndTime"

#Obtain the shiftlenghts of each of the shifts
#Put obtained shifts into a Standalone table
database.file <- file.path("C:/Users/svip/Dropbox/ALFAM2/Data/NMI/Drafts/ALFAM2_NMI_v2.xlsx")
excel.database <- readWorksheetFromFile(database.file,sheet=1)
excel.shifts <- data.frame(excel.database[9:length(excel.database[[1]]),4],excel.database[9:length(excel.database[[1]]),13],excel.database[9:length(excel.database[[1]]),14])
colnames(excel.shifts) <- c("Location","Start.Shift","End.Shift")
excel.shifts$Start.Shift <- as.POSIXct(strptime(excel.shifts$Start.Shift,"%d-%m-%Y %H:%M"), tz="UTC")
excel.shifts$End.Shift <- as.POSIXct(strptime(excel.shifts$End,"%d-%m-%Y %H:%M"),tz ="UTC")
excel.shifts$Intervals <- excel.shifts$Start.Shift %--% excel.shifts$End.Shift

#Check that precipitation values are no -1. If -1, replace with 0 (real precipitation is < 0.05mm)
excel.data$RH <- as.numeric(gsub(pattern=-1, replacement=0,x=excel.data$RH))

for(n in 1:87){
  excel.shifts[n,"Temp"] <-  mean(as.numeric(subset(excel.data, int_overlaps(excel.shifts[n,4],Intervals), select=c("T"))[,])*0.1)
  excel.shifts[n,"SolRad"] <- mean(as.numeric(subset(excel.data, int_overlaps(excel.shifts[n,4],Intervals), select=c("Q"))[,])/(0.0001*3600))
  excel.shifts[n,"Wind"] <- mean(as.numeric(subset(excel.data, int_overlaps(excel.shifts[n,4],Intervals), select=c("FH"))[,])*0.1)
  excel.shifts[n,"Precip"] <- sum(as.numeric(subset(excel.data, int_overlaps(excel.shifts[n,4],Intervals), select=c("RH"))[,])*0.1)
}


writeWorksheetToFile("Wageningen_DataExport.xlsx",excel.shifts,"1")
