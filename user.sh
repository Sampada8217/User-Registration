#!/bin/bash -x
echo "Enter First Name"
read name
echo "Enter Last Name"
read last
echo "Enter Email_id"
read email
echo "Enter Mobile no"
read mobiNum
echo "Enter Password"
read pass
patName="^[A-Z][a-z]{3,}$"
patLastName="^[A-Z][a-z]{3,}$"
patEmailId="^[0-9a-zA-Z]+([._+-][0-9a-zA-Z]+)*@[0-9a-zA-Z]+.[a-zA-Z]{2,4}([.][a-zA-Z]{2})$"
patMobileNumber="^[1-9]{2}[[:space:]]{1}[0-9]{10}$"
patPassRule1="^[A-Za-z]{8,}$"
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
checkValidUserData $name $patName
checkValidUserData $last $patLastName
checkValidUserData $email $patEmailId
checkValidMobiNum $mobiNum $patMobileNumber
checkValidUserData $pass $patPassRule1
