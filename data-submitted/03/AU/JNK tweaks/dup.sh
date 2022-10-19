# Fixes weather resolution issue

#Go from this:
#
#NaN		NaN	0.1		NaN
#16.30		17.8	0.1		144.30
#NaN		NaN	0.1		NaN
#14.80		17.7	0.1		25.90
#NaN		NaN	0.1		NaN
#13.40		17.6	0.1		0.00
#NaN		NaN	0.1		NaN
#12.50		17.5	0.1		0.00
#NaN		NaN	0.1		NaN
#12.60		17.3	0.1		0.00
#NaN		NaN	0.1		NaN
#12.60		17.2	0.1		0.00
#
#to this

#16.30		17.8	0.1		144.30
#16.30		17.8	0.1		144.30
#14.80		17.7	0.1		25.90
#14.80		17.7	0.1		25.90
#13.40		17.6	0.1		0.00
#13.40		17.6	0.1		0.00
#12.50		17.5	0.1		0.00
#12.50		17.5	0.1		0.00
#12.60		17.3	0.1		0.00

sed -n '0~2!p' weather > w2
sed 'p' w2 > w3

## Can I do this in one command? I can't anyway
#sed '0~2!p' weather > w2
