#!/bin/bash
#一键安装mysql5.7
curl -LO http://dev.mysql.com/get/mysql57-community-release-el7-11.noarch.rpm
sudo yum localinstall mysql57-community-release-el7-11.noarch.rpm
sudo yum install mysql-community-server
sudo systemctl enable mysqld
sudo systemctl start mysqld
sudo systemctl status mysqld
grep 'temporary password' /var/log/mysqld.log
#登陆修改密码
#ALTER USER 'root'@'localhost' IDENTIFIED BY 'MyNewPass4!';
#重起服务器
#sudo systemctl restart mysqld
#添加远程用户
#GRANT ALL PRIVILEGES ON *.* TO 'admin'@'%' IDENTIFIED BY 'secret' WITH GRANT OPTION;
#再次重启生效
