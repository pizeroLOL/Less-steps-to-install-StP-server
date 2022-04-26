#!/bin/bash
if grep -Eqii "CentOS" /etc/issue || grep -Eq "CentOS" /etc/*-release; then
    sudo yum update git wget -y
    sudo yum install java-1.8.0-openjdk git wget -y
elif grep -Eqi "Red Hat Enterprise Linux Server" /etc/issue || grep -Eq "Red Hat Enterprise Linux Server" /etc/*-release; then
    sudo yum update git wget -y
    sudo yum install java-1.8.0-openjdk git wget -y
elif grep -Eqi "Aliyun" /etc/issue || grep -Eq "Aliyun" /etc/*-release; then
    sudo yum update -y
    sudo yum install java-1.8.0-openjdk git wget -y
elif grep -Eqi "Fedora" /etc/issue || grep -Eq "Fedora" /etc/*-release; then
    sudo yum update -y
    sudo yum install java-1.8.0-openjdk git wget -y
elif grep -Eqi "Debian" /etc/issue || grep -Eq "Debian" /etc/*-release; then
    sudo apt update
    sudo apt install openjdk-8-jdk git wget -y
elif grep -Eqi "Ubuntu" /etc/issue || grep -Eq "Ubuntu" /etc/*-release; then
    sudo apt update
    sudo apt install openjdk-8-jdk git wget -y
elif grep -Eqi "Raspbian" /etc/issue || grep -Eq "Raspbian" /etc/*-release; then
    sudo apt update
    sudo apt install openjdk-8-jdk git wget -y'
else
    echo 请自行下载openjdk8
fi

sh dl-stp-server.sh
