#!/bin/bash
#
for((i=1;i<=9;i=i+1))
do
        user1="t0$i"
        sudo chmod a-w /home/$user1
	sudo chmod 777 /home/$user1/WEB
done
for((i=10;i<=100;i=i+1))
do
        user1="t$i"
        sudo chmod a-w /home/$user1
	sudo chmod 777 /home/$user1/WEB
done
sudo rm -r ~/computer_c_exam
