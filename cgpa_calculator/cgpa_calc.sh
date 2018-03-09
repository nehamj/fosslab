#!/bin/bash

pdftotext -layout -nopgbrk result_MDL.pdf
pdftotext -layout -nopgbrk result_MDL2.pdf

grep -A 1 "MDL16CS" result_MDL.txt > CS_S1.txt
grep -A 1 "MDL16CS" result_MDL2.txt >CS_S2.txt

sed -i 's/MA101//g' CS_S1.txt
sed -i 's/PH100//g' CS_S1.txt
sed -i 's/BE110//g' CS_S1.txt
sed -i 's/BE10105//g' CS_S1.txt
sed -i 's/BE103//g' CS_S1.txt
sed -i 's/EE100//g' CS_S1.txt
sed -i 's/PH110//g' CS_S1.txt
sed -i 's/EE110//g' CS_S1.txt
sed -i 's/\<CS110\>//g' CS_S1.txt
sed -i 's/,//g' CS_S1.txt
sed -i 's/--//g' CS_S1.txt
sed -i 's/            //g' CS_S1.txt
sed -i 's/     / /g' CS_S1.txt
tr -d "\n" <CS_S1.txt>CS_s1.txt
sed -i 's/MDL16CS/\nMDL16CS/g' CS_s1.txt
mv CS_s1.txt CS_S1.txt


sed -i 's/(O)/10/g' CS_S1.txt
sed -i 's/(A+)/9/g' CS_S1.txt
sed -i 's/(A)/8.5/g' CS_S1.txt
sed -i 's/(B+)/8/g' CS_S1.txt
sed -i 's/(B)/7/g' CS_S1.txt
sed -i 's/(C)/6/g' CS_S1.txt
sed -i 's/(P)/5/g' CS_S1.txt
sed -i 's/(F)/0/g' CS_S1.txt

awk '{print $1 " " ($2*4 + $3*4 + $4*3  + $5*3  + $6*3  + $7*3  + $8*1  + $9*1 + $(10)*1 )/23}' CS_S1.txt >CS_s1.txt
mv CS_s1.txt CS_S1.txt

sed -i 's/CY100//g' CS_S2.txt
sed -i 's/BE100//g' CS_S2.txt
sed -i 's/EC100//g' CS_S2.txt
sed -i 's/CY110//g' CS_S2.txt
sed -i 's/EC110//g' CS_S2.txt
sed -i 's/MA102//g' CS_S2.txt
sed -i 's/BE102//g' CS_S2.txt
sed -i 's/\<CS100\>//g' CS_S2.txt
sed -i 's/\<CS120\>//g' CS_S2.txt
sed -i 's/,//g' CS_S2.txt
sed -i 's/--//g' CS_S2.txt
sed -i 's/            //g' CS_S2.txt
sed -i 's/     / /g' CS_S2.txt
tr -d "\n" <CS_S2.txt>CS_s2.txt
sed -i 's/MDL16CS/\nMDL16CS/g' CS_s2.txt
mv CS_s2.txt CS_S2.txt

sed -i 's/(O)/10/g' CS_S2.txt
sed -i 's/(A+)/9/g' CS_S2.txt
sed -i 's/(A)/8.5/g' CS_S2.txt
sed -i 's/(B+)/8/g' CS_S2.txt
sed -i 's/(B)/7/g' CS_S2.txt
sed -i 's/(C)/6/g' CS_S2.txt
sed -i 's/(P)/5/g' CS_S2.txt
sed -i 's/(F)/0/g' CS_S2.txt

awk '{print $1 " " ($2*4 + $3*4 + $4*3  + $5*1  + $6*1  + $7*4  + $8*3  + $9*3 + $(10)*1 )/24}' CS_S2.txt >CS_s2.txt
mv CS_s2.txt CS_S2.txt

awk '{print $1 " " $2 $3 $4 " " $5 " " $6 " " $7 " " $8}' cs4b.txt >csb.txt

join -1 4 -2 1 csb.txt CS_S1.txt >csb_16.txt
join -1 1 -2 1 csb_16.txt CS_S2.txt>temp.txt

awk '{print $1 "|"  $3 "|" $4 "|" $5 " " $6 "|" $7 "|" $8 "|" ($7*23 +$8*24)/47}' temp.txt>csb_16.txt
column -t -s "|" csb_16.txt>temp.txt
mv temp.txt csb_16.txt

rm csb.txt CS_S1.txt CS_S2.txt result_MDL.txt result_MDL2.txt

nano csb_16.txt

