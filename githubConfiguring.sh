#!/bin/bash

#Github setup: when run, the github script will pull down the user's repository, 
#set their username in that repository using .local and set their email in that repository using .local

echo "This program will help you set up your GitHub repository with your username and email."

#get username
echo "Please enter your username: "
read username

#get email
echo "Please enter your email address: "
read email

#get repo url
echo "Enter the URL of your repository: "
read url

#extract repo name from its url
basename=$(basename $url)
reponame=${basename%.*}

#go to the repo
cd $reponame/

#set up username and email
git config --local user.name $username
git config --local user.email $email

echo "Your repository is successfully set up."