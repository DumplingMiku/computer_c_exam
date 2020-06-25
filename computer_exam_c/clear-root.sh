#!/bin/bash
#
for((i=1;i<=9;i=i+1))
do
        user1="t0$i"
        pass="passwd0$i"
        echo "t0$i:passwd0$i" | sudo chpasswd
        rm -R /var/www/html/$user1
        rm -R /home/$user1
        mkdir /home/$user1
        mkdir /home/$user1/WEB
	ln -ns /home/$user1/WEB /var/www/html/$user1
        chmod 777 /home/$user1/WEB
done
for((i=10;i<=100;i=i+1))
do
        user1="t$i"
        pass="passwd$i"
        echo "t$i:passwd$i" | sudo chpasswd
	    rm -R /var/www/html/$user1
        rm -R /home/$user1
        mkdir /home/$user1
        mkdir /home/$user1/WEB
        ln -ns /home/$user1/WEB /var/www/html/$user1
        chmod 777 /home/$user1/WEB
done
