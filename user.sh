#!/bin/bash -x
echo "Enter First Name"
read name
echo "Enter Last Name"
read last
echo "Enter Email_id"
read email

patName="^[A-Z][a-z]{3,}$"
patLastName="^[A-Z][a-z]{3,}$"
patEmailId="^[0-9a-zA-Z]+([._+-][0-9a-zA-Z]+)*@[0-9a-zA-Z]+.[a-zA-Z]{2,4}([.][a-zA-Z]{2})$"

function checkValidUserData()
{
	if [[ $1 =~ $2 ]]
	then
		echo "Valid User Data"
	else
		echo "Invalid User Data"
	fi
}
checkValidUserData $name $patName
checkValidUserData $last $patLastName
checkValidUserData $email $patEmailId
