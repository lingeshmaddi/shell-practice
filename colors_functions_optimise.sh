#!/bin/bash

USERID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ $USERID -ne 0 ]; then
    echo "ERROR:: Please run this script with root privilege"
    exit 1
fi

VALIDATE(){
    if [ $1 -ne 0 ]; then
        echo -e "Installing $2 ... $R FAILURE $N"
        exit 1
    else
        echo -e "Installing $2 ... $G SUCCESS $N"
    fi
}

CHECK(){
    local pkg=$1
    dnf list installed $pkg &>/dev/null
    if [ $? -ne 0 ]; then
        dnf install $pkg -y &>/dev/null
        VALIDATE $? "$pkg"
    else
        echo -e "$pkg already exists ... $Y SKIPPING $N"
    fi
}

CHECK mysql
CHECK nginx
CHECK python3