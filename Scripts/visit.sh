#!/bin/bash

#This code is for Question 9

echo ""
echo "+++++++++++++++++++++++++++"
echo ""
echo "This script lets you write information about the patient."
echo ""
echo "NOTE: Doctors, if you encounter any problems,"
echo "      call the administrator on (024523546). "
echo ""
echo "+++++++++++++++++++++++++++"

#This file basically tells the doctor to input the patients information. Once entered, it saves
# it in the correct format for the pmedicalrecord.log file to be read later.
echo "Enter the following information about the patient:"
	read -p "First Name: " fName
	fName=${fName,,}
	read -p "Surname: " sName
	read -p "Date of Birth: " dBirth

	cd /opt/WellingtonClinic/patients/

	echo $fName
	echo $sName
	echo $dBirth

	fLetter=${fName:0:1}
	lLetter=${sName: -1}
	dOB=${dBirth///}

	fileName="$fLetter$lLetter$dOB"
	echo "$fileName"
	cd $fileName
	f="pmedicalrecord.log"

	read -r -p "Date of visit: " dVisit
	read -r -p "Doctor assigned: " doc
	read -r -p "Issue: " i
	read -r -p "Medicine prescribed: " med
	read -r -p "Required dosage: " d

echo -e "$dVisit","$doc","$i","$med","$d" >> $f
