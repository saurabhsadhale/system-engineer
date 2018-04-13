#!/bin/bash

# Check if PHP,MySQL, Nginx are installed on the system

# Check if PHP is installed
check_php5=`dpkg -s php | grep Status`
if [ $check_php5 == "Status: install ok installed" ]
then
	echo "PHP is installed"
	echo "-----------------"
	echo ""
else
	sudo apt-get install php libapache2-mod-php php-mcrypt php-mysql -y
fi

# Check if MySQL is installed
check_mysql=`dpkg -s mysql-server | grep Status`
if [ $check_mysql != "Status: install ok installed" ]
then
	sudo apt-get install mysql-server -y
fi
 

# Check if nginx is installed
check_nginx=`dpkg -s nginx | grep Status`
if [ $check_nginx != "Status: install ok installed" ]
then
	sudo apt-get install nginx -y
fi
