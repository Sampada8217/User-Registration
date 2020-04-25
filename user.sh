#!/bin/bash -x
shopt -s extglob
patName="^[A-Z][a-z]{3,}$"
patLastName="^[A-Z][a-z]{3,}$"
patEmailId="^[0-9a-zA-Z]+([._+-][0-9a-zA-Z]+)*@[0-9a-zA-Z]+.[a-zA-Z]{2,4}([.][a-zA-Z]{2})"
patMobileNumber="^[1-9]{2}[[:space:]]{1}[0-9]{10}$"
patPassRule1="^[A-Za-z]{8,}$"
patPassRule2="^(?=.*[A-Z])$"
patPassRule3="^(?=.*\d)$"
patPassRule4="^(?=.*[@#$%])$"
patPassRule="^(?=.*[A-Z])(?=.*\d)(?=.*[@#$%])[A-Za-z]{8,}$"


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
checkValidUserData $pass $patPassRule
