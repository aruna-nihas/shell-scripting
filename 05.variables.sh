#!/bin/bash

USERNAME=$1
PASSWORD=$2
#echo "User name is $USERNAME and Password is $PASSWORD"
echo "Please enter username"
read USERNAME
echo "Username is $USERNAME"
echo "Please enter Password"
read -s PASSWORD
echo "Password is $PASSWORD"