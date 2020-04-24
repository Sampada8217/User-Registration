#!/bin/bash -x
echo "Enter First Name"
read name
patName="^[A-Z][a-z]{3,}$"
if [[ $name =~ $patName ]]
then
	echo "Valid Name"
else
	echo "Invalid Name"
fi
