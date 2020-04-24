#!/bin/bash -x
echo "Enter First Name"
read name
echo "Enter Last Name"
read last

patName="^[A-Z][a-z]{3,}$"
patLastName="^[A-Z][a-z]{3,}$"

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
