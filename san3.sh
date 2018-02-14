echo enter students marks
read s
if [ $s -gt 90 ]
then 
echo A grade
elif [ $s -gt 80]
then
echo B grade
elif [ $s -gt 70 ]
then
echo C grade
else
       	echo fail
fi
