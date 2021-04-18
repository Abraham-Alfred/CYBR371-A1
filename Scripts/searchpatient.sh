#!/bin/bash
# This script is for Question 10
echo ""
echo "++++++++++++++++++++++++++"
echo "+                        +"
echo "+    Patient Search.     +"
echo "+                        +"
echo "++++++++++++++++++++++++++"
echo ""

echo ""
	#start asking the receptionist for the patients details. Some code reused from 7 and 8.
	read -p "Doctor's Username: " dName
	dName=${dName,,}

	read -p "First Name: " fName
	fName=${fName,,}
	read -p "Surname: " sName
	read -p "Date of Birth: " dBirth

	echo $fName
	echo $sName
	echo $dBirth

	fLetter=${fName:0:1}
	lLetter=${sName: -1}
	dOB=${dBirth///}

	fileName="$fLetter$lLetter$dOB"
	echo "$fileName"

echo ""
echo "+++++++++++++++++++++++++++"
echo "+                         +"
echo "+ Pick either from 1 or 2 +"
echo "+  [1] Pick from patient. +"
echo "+  [2] Pick from doctor.  +"
echo "+                         +"
echo "+++++++++++++++++++++++++++"
echo ""
	#Start reading the input given. 
	read input

		#if its 1, then make an array and change directory to the given filename. Similar delimiter 
		# used from question 8.
		if [ $input -eq 1 ]
		then
		declare -a readArr
		cd /opt/WellingtonClinic/patients/${fileName}/
			while IFS= read -r l1
			do
			IFS=','
			read -a delim <<< "$l1"
			readArr+=${delim[1]}
		done < pmedicalrecord.log
	#read through the array and truncate any empty spaces and quotation marks and sort through. 
	echo "Doctor: ${readArr[@]}" | tr ' ' '\n' | sort -u | tr '\n' ' '

	#if the input is 2, then change directory to patients, run a forloop through a wildcard directory
	# to get the doctor from the file, if  the doctor matches, print the doctor. Then break then finish.
	elif [ $input -eq 2 ]
	then

	cd /opt/WellingtonClinic/patients
	for doc in */; do
		while IFS= read -r l2
			do
			IFS=','
			read -a delim <<< "$l2"
				if [[ "${delim[1]}" == *"$dName"* ]] 
					then
				echo $doc
			break
		fi
	done < $doc/pmedicalrecord.log
done
	#Let the receptionist know that the input is valid. then finish.
	else
		echo "This is not a valid option. Please try again."
	fi
