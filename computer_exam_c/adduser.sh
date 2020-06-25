#!/bin/bash
#add user t01 ~ t09
for (( i=1; i<=9; i=i+1 ))
do
	#sudo userdel t0$i
	#sudo rm -r /home/t0$i
	#sudo rm /var/www/html/t0$i	
	sudo adduser t0$i --gecos "First Last,RoomNumber,WorkPhone,HomePhone" --disabled-password
	echo "t0$i:passwd0$i" | sudo chpasswd
	sudo mkdir /home/t0$i/WEB	
	sudo ln -ns /home/t0$i/WEB /var/www/html/t0$i
done
#add user t10~t60
for (( i=10; i<=100; i=i+1 ))
do
    #sudo userdel t$i
	#sudo rm -r /home/t$i
	#sudo rm /var/www/html/t$i
	sudo adduser t$i --gecos "First Last,RoomNumber,WorkPhone,HomePhone" --disabled-password
	echo "t$i:passwd$i" | sudo chpasswd
	sudo mkdir /home/t$i/WEB	
	sudo ln -ns /home/t$i/WEB /var/www/html/t$i
done
~/server/computer_exam_c/changeMode.sh
