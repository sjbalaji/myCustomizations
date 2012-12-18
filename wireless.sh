#!/bin/sh

iwconfig wlan2 2>&1 | grep -q no\ wireless\ extensions\. && {
  echo wired
  exit 0
}

essid=`sudo iwconfig eth1 | awk -F '"' '/ESSID/ {print $2}'`
stngth=`sudo iwconfig eth1 | awk -F '=' '/Quality/ {print $2}' | cut -d '/' -f 1`
bars=`echo "$stngth * 2" | bc`
if [ -z $essid ];
then
bar="[----!!----]"
else 
case $bars in
  0)  bar="[----------]" ;;
  1)  bar="[*---------]" ;;
  2)  bar="[**--------]" ;;
  3)  bar="[***-------]" ;;
  4)  bar="[****------]" ;;
  5)  bar="[*****-----]" ;;
  6)  bar="[******----]" ;;
  7)  bar="[*******---]" ;;
  8)  bar="[********--]" ;;
  9)  bar="[*********-]" ;;
  10) bar="[**********]" ;;
esac
fi
echo -ne "${essid}: ${bar}"
exit 0
