echo 0 20 | gmt psxy -R-100/100/-80/120 -JX10 -Sc1 -Ba20g10/a20g10 -P -K > 01_psxy.ps

echo 0 50 | gmt psxy -R-1000/1000/-80/120 -JX10 -Sc1 -Ba20g10/a20g10 -P -O -K >> 01_psxy.ps
echo 0 90 | gmt psxy -R-100/100/-80/120 -JX10 -Sc1 -Ba20g10/a20g10 -P -O >> 01_psxy.ps
