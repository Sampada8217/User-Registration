#!/bin/bash -x
shopt -s extglob
patName="^[[:upper:]]{1}[a-z]{3,}$"
patLastName="^[[:upper:]]{1}[a-z]{3,}$"
patEmailId="^[0-9a-zA-Z]+([._+-][0-9a-zA-Z]+)*@[0-9a-zA-Z]+.[a-zA-Z]{2,4}([.][a-zA-Z]{2})"
patMobileNumber="^[1-9]{2}[[:space:]]{1}[0-9]{10}$"

function checkValidUserData()
{
	if [[ $1 =~ $2 ]]
	then
		echo "Valid User Data"
	else
		echo "Invalid User Data"
	fi
}
function checkValidMobiNum()
{
	if [[ $mobiNum =~ $patMobileNumber ]]
	then
		echo "Valid Mobile Number"
	else
		echo "Invalid Mobile Number"
	fi
}

function Password()
{
	if [[ ${#pass} -ge 8 && "$pass" == *[[:lower:]]* && "$pass" == *[[:upper:]]* && "$pass" == *[0-9]* ]]
	then	
		echo "Valid Password"
	else
		echo "Invalid Password"
	fi

}

echo "Enter First Name"
read name
checkValidUserData $name $patName

echo "Ente Last Name"
read last
checkValidUserData $last $patLastName

echo "Enter Email_id"
read email
checkValidUserData $email $patEmailId

echo "Enter Mobile no"
read mobiNum
checkValidMobiNum $mobiNum $patMobileNumber

echo "Enter Password"
read pass
Password $pass

