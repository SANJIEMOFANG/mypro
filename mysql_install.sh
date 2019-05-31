#!/bin/bash
#########MySQL5.7RPM auto install###########
#########2019-5-2###########################
mkdir -p /root/mysql
cd /root/mysql
wget https://dev.mysql.com/get/Downloads/MySQL-5.7/mysql-5.7.26-1.el7.x86_64.rpm-bundle.tar &>/dev/null
tar xf mysql-5.7.26-1.el7.x86_64.rpm-bundle.tar
#rpm -qa |grep mariadb
yum remove mariadb-libs-5.5.56-2.el7.x86_64 &>/dev/null
if [ $? -eq 0 ];then
yum install libaio -y &>/dev/null
fi
rpm -ivh mysql-community-common-5.7.26-1.el7.x86_64.rpm &>/dev/null
rpm -ivh mysql-community-libs-5.7.26-1.el7.x86_64.rpm &>/dev/null
rpm -ivh mysql-community-devel-5.7.26-1.el7.x86_64.rpm &>/dev/null
rpm -ivh mysql-community-client-5.7.26-1.el7.x86_64.rpm &>/dev/null
rpm -ivh mysql-community-server-5.7.26-1.el7.x86_64.rpm &>/dev/null
rpm -ivh mysql-community-libs-compat-5.7.26-1.el7.x86_64.rpm &>/dev/null
yum install postfix -y &>/dev/null
systemctl start mysqld && systemctl start postfix
