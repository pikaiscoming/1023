out_ps=03_work.ps
input_list=eq.list
  cpt=04_depth.cpt

gmt set PS_MEDIA A4 

gmt makecpt -T0/315/15 -Crainbow -Z > $cpt
  
# start gmt session
gmt psxy -R0/1/0/1 -JX1c -T -K -P > $out_ps 
# main map 
gmt psbasemap -R-7/1-2/50/58 -Jm1.9 -B1 -G0/250/250 -O -K >> $out_ps
gmt pscoast -R -J -B -W1 -G84/139/84 -Df -Ia -O -K >> $out_ps
awk -F'[,]' 'NR>1 {print $4, $3, $6}' $input_list | gmt psxy -R -J -Sc0.3 -W0.1 -C$cpt -O -K >> $out_ps
echo  0.1278 51.5074 | gmt psxy -R -J -Sa0.7 -W0.01 -G255/0/0 -O -K >> $out_ps
echo  0.1278 51.4 "London" | gmt pstext -R -J -F+f,Helvetica-Bold,black -O -K >> $out_ps
 

# end gmt session
gmt psxy -R -J -O -T >> $out_ps 
  
# convert to pdf
gmt psconvert $out_ps -P -Tf
# convert to png
gmt psconvert $out_ps -P -Tg