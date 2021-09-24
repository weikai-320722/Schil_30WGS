#!/bin/bash

# ## pop order 4107 (1), 2932 (2), 1963 (3), 3111 (4), 2931 (5), 4330 (6)
 Ne=2e4
 mu=1e-8
 
 T1=$(echo $Ne | awk '{print (20000/5)/($1*4)}')   ## T nomig - 20 kya
 T2=$(echo $Ne | awk '{print (200000/5)/($1*4)}')  ## Tdiv 4330 - 200 kya
 T3=$(echo $Ne | awk '{print (1000000/5)/($1*4)}') ## Tdiv Coast (4107-2932) - 1 Mya
 T4=$(echo $Ne | awk '{print (1200000/5)/($1*4)}') ## Tdiv Central (2931-3111-1963) - 1.2 Mya
 
 mig1=$(echo $Ne | awk '{print 0.000001*$1*4}')
 mig2=$(echo $Ne | awk '{print 0.00001*$1*4}')
 mig3=$(echo $Ne | awk '{print 0.0001*$1*4}')
 
 for i in {1..10000}; do
 	name=10M
 	size=10000000
 	theta=$(echo $Ne $mu $size | awk '{print $1*$2*$3*4}')
 	rho=$(echo $theta | awk '{print $1/1}')
 	echo "simulating:	rep $i	size $size	theta $theta	rec.rate $rho"

 	/data/proj/teaching/NGS_course/Softwares/scrm 60 1 -t $theta -r $rho $size*$rho \
 		-sr 1 0.1*$rho \
		-sr 100001 0.2*$rho \
		-sr 200001 0.3*$rho \
		-sr 300001 0.4*$rho \
		-sr 400001 0.5*$rho \
		-sr 500001 0.6*$rho \
		-sr 600001 0.7*$rho \
		-sr 700001 0.8*$rho \
		-sr 800001 0.9*$rho \
		-sr 900001 1.0*$rho \
		-sr 1000001 1.1*$rho \
		-sr 1100001 1.2*$rho \
		-sr 1200001 1.3*$rho \
		-sr 1300001 1.4*$rho \
		-sr 1400001 1.5*$rho \
		-sr 1500001 1.6*$rho \
		-sr 1600001 1.7*$rho \
		-sr 1700001 1.8*$rho \
		-sr 1800001 1.9*$rho \
		-sr 1900001 2.0*$rho \
		-sr 2000001 2.1*$rho \
		-sr 2100001 2.2*$rho \
		-sr 2200001 2.3*$rho \
		-sr 2300001 2.4*$rho \
		-sr 2400001 2.5*$rho \
		-sr 2500001 2.6*$rho \
		-sr 2600001 2.7*$rho \
		-sr 2700001 2.8*$rho \
		-sr 2800001 2.9*$rho \
		-sr 2900001 3.0*$rho \
		-sr 3000001 3.1*$rho \
		-sr 3100001 3.2*$rho \
		-sr 3200001 3.3*$rho \
		-sr 3300001 3.4*$rho \
		-sr 3400001 3.5*$rho \
		-sr 3500001 3.6*$rho \
		-sr 3600001 3.7*$rho \
		-sr 3700001 3.8*$rho \
		-sr 3800001 3.9*$rho \
		-sr 3900001 4.0*$rho \
		-sr 4000001 4.1*$rho \
		-sr 4100001 4.2*$rho \
		-sr 4200001 4.3*$rho \
		-sr 4300001 4.4*$rho \
		-sr 4400001 4.5*$rho \
		-sr 4500001 4.6*$rho \
		-sr 4600001 4.7*$rho \
		-sr 4700001 4.8*$rho \
		-sr 4800001 4.9*$rho \
		-sr 4900001 5.0*$rho \
		-sr 5000001 5.1*$rho \
		-sr 5100001 5.2*$rho \
		-sr 5200001 5.3*$rho \
		-sr 5300001 5.4*$rho \
		-sr 5400001 5.5*$rho \
		-sr 5500001 5.6*$rho \
		-sr 5600001 5.7*$rho \
		-sr 5700001 5.8*$rho \
		-sr 5800001 5.9*$rho \
		-sr 5900001 6.0*$rho \
		-sr 6000001 6.1*$rho \
		-sr 6100001 6.2*$rho \
		-sr 6200001 6.3*$rho \
		-sr 6300001 6.4*$rho \
		-sr 6400001 6.5*$rho \
		-sr 6500001 6.6*$rho \
		-sr 6600001 6.7*$rho \
		-sr 6700001 6.8*$rho \
		-sr 6800001 6.9*$rho \
		-sr 7000001 7.0*$rho \
		-sr 7100001 7.1*$rho \
		-sr 7200001 7.2*$rho \
		-sr 7300001 7.3*$rho \
		-sr 7400001 7.4*$rho \
		-sr 7500001 7.5*$rho \
		-sr 7600001 7.6*$rho \
		-sr 7700001 7.7*$rho \
		-sr 7800001 7.8*$rho \
		-sr 7900001 7.9*$rho \
		-sr 8000001 8.0*$rho \
		-sr 8100001 8.1*$rho \
		-sr 8200001 8.2*$rho \
		-sr 8300001 8.3*$rho \
		-sr 8400001 8.4*$rho \
		-sr 8500001 8.5*$rho \
		-sr 8600001 8.6*$rho \
		-sr 8700001 8.7*$rho \
		-sr 8800001 8.8*$rho \
		-sr 8900001 8.9*$rho \
		-sr 9000001 9.0*$rho \
		-sr 9100001 9.1*$rho \
		-sr 9200001 9.2*$rho \
		-sr 9300001 9.3*$rho \
		-sr 9400001 9.4*$rho \
		-sr 9500001 9.5*$rho \
		-sr 9600001 9.6*$rho \
		-sr 9700001 9.7*$rho \
		-sr 9800001 9.8*$rho \
		-sr 9900001 9.9*$rho \
		-sr 9900001 10.0*$rho \
 		-I 6 10 10 10 10 10 10 -n 1 0.5 -n 2 0.5 -n 4 0.75 -n 6 0.3*$rho \
 		-ma x $mig1 0 0 0 0 $mig1 x $mig1 0 0 0 0 $mig1 x $mig3 $mig3 $mig1 0 0 $mig3 x $mig2 $mig1 0 0 $mig3 $mig2 x $mig2 0 0 $mig1 $mig1 $mig2 x*$rho \
 		-ema $T1 x $mig2 $mig1 $mig1 $mig1 $mig1 $mig2 x $mig2 $mig1 $mig1 $mig1 $mig1 $mig2 x $mig3 $mig3 $mig3 $mig1 $mig1 $mig3 x $mig3 $mig3 $mig1 $mig1 $mig3 $mig3 x $mig3 $mig1 $mig1 $mig3 $mig3 $mig3 x*$rho \
 		-ema $T2 x $mig3 $mig3 $mig3 $mig3 0 $mig3 x $mig3 $mig3 $mig3 0 $mig3 $mig3 x $mig3 $mig3 0 $mig3 $mig3 $mig3 x $mig3 0 $mig3 $mig3 $mig3 $mig3 x 0 0 0 0 0 0 x*$rho \
 		-g 1 $(echo $T3 $Ne | awk '{print -log(4e4/($2*0.5))/$1}')*$rho \
 		-g 2 $(echo $T3 $Ne | awk '{print -log(6e4/($2*0.5))/$1}')*$rho \
 		-g 3 $(echo $T3 $Ne | awk '{print -log(1e5/$2)/$1}')*$rho \
 		-g 4 $(echo $T3 $Ne | awk '{print -log(1e5/($2*0.75))/$1}')*$rho \
 		-g 5 $(echo $T3 $Ne | awk '{print -log(1e5/$2)/$1}')*$rho \
 		-g 6 $(echo $T2 $Ne | awk '{print -log(1e5/($2*0.3))/$1}')*$rho \
 		-en $T3 1 2*$rho \
 		-en $T3 2 3*$rho \
 		-en $T3 3 5*$rho \
 		-en $T3 4 5*$rho \
 		-en $T3 5 5*$rho \
 		-en $T2 6 5*$rho \
 		-ej $T2 6 5*$rho \
 		-ej $T3 1 2*$rho \
 		-ej $T3 2 3*$rho \
 		-ej $T4 5 4*$rho \
 		-ej $T4 4 3 > temp3.ms.out

 	pops=(4107 2932 1963 3111 2931 4330)
 	lin=7
 	for pop in ${!pops[*]}; do
 		echo "		extracting:	pop LA${pops[$pop]}	line $lin"
 		awk -v "start=$lin" 'NR>=3&&NR<=6; NR>=start&&NR<=start+9' temp3.ms.out >> $name.sim.rec03.${pops[$pop]}.ms.out
 		lin=$((lin+10))
 	done
 	rm -rf temp3.ms.out
 done
