#!/bin/bash
#This script is for Question 7 and 8

# Question 7

echo ""
echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo "+ This is the patient manager for the Wellington Clinic. +"
echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo ""
echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo "+                                                        +"
echo "+   Select an input from 1, 2 or 3:                      +"
echo "+      [1] Set up the new patient.                       +"
echo "+      [2] See which doctor the patient is booked with.  +"
echo "+      [3] Search for a patient.                         +"
echo "+                                                        +"
echo "+   NOTE: Receptionists, if you encounter any problems,  +"
echo "+           call the administrator on (024523546).       +"
echo "+                                                        +"
echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"

#Start reading the input
read input
	#If the input is 1, start asking information about the patient
	if [ $input -eq 1 ]

	then
		echo "Enter the following information about the patient:"
		read -p "First Name: " fName
		read -p "Surname: " sName
		read -p "Date of Birth: " dBirth
		read -p "Gender: " gen
		read -p "Physical address: " pAdd
		read -p "Email: " eMl
		read -p "Phone number: " phNum
		read -p "Registered doctor: " regDoc

		echo $fName
		echo $sName
		echo $dBirth
		echo $gen
		echo $pAdd
		echo $eMl
		echo $phNum
		echo $regDoc

		#change directories to go inside patients
		cd /opt/WellingtonClinic/patients/


		#make the first letter read the first lowercase string of the file, and last letter reads the last
		#string of the file. Also makes sure it concatonates through the "/" in dob input
		fLetter=${fName:0:1}
		lLetter=${sName: -1}
		dOB=${dBirth///}

		#read all inputs as variable filename, make directory called the patients firstletter, lastletter and dob
		#change directory to that filename.
		fileName="$fLetter$lLetter$dOB"
		mkdir -p $fileName
		cd $fileName

		#echo the information from the inputs to pbasicinfo.log
		echo "$fName", "$sName", "$dBirth", "$gen", "$pAdd", "$eMl", "$phNum", "$regDoc" > pbasicinfo.log

		#Change directory and run a forloop to save the filename as lowercase to follow the assignment
		# script.
		cd /opt/WellingtonClinic/patients
		for name in ${fileName}; do
        		#set new name in lower case for files and directories
        		new_name="$(dirname "${fileName}")/$(basename "${fileName}" | tr '[A-Z]' '[a-z]')"

        		#check if new name already exists
        		if [ "${name}" != "${new_name}" ]; then
                	[ ! -e "${new_name}" ] && mv -T "${name}" "${new_name}"; echo "${name} was renamed to ${new_name}" || echo "${name} wasn't renamed!"
       		fi #exit forloop
	done #once done, leave.

	#If the input is 2, run code for Question 8. This will gather information about the patient
	# and tell the receptionist who the doctor assigned for this patient is.
	elif [ $input -eq 2 ]
	then

	# Question 8. Read the firstname as lowercase, helps avoid issues with Capital inputs.
	echo "To book an appointment, enter the following information about the patient:"
	read -p "First Name: " fName
	fName=${fName,,}
	read -p "Surname: " sName
	read -p "Date of Birth: " dBirth

	echo $fName
	echo $sName
	echo $dBirth

	#change directory to patients
	cd /opt/WellingtonClinic/patients/

	#do similar stuff from question 7.
	fLetter=${fName:0:1}
	lLetter=${sName: -1}
	dOB=${dBirth///}

	fileName="$fLetter$lLetter$dOB"
	echo "$fileName"
	cd "$fileName"

	#change directory into that file. Make a file called pmedicalrecord.log
	cd /opt/WellingtonClinic/patients/${fileName}/
	touch pmedicalrecord.log

	#make a variable for the log file.
	f1="pmedicalrecord.log"
		# read the line of the file and run a delimiter to get the Date and the Doctor out of the file.
		while IFS= read -r l1
		do
		IFS=','
		read -a delim <<< "$l1"
		echo "Date: ${delim[0]} | Doctor: ${delim[1]}"
		done < "$f1"

		#do same as above but read through the first line from pbasicinfo instead and pass it to an array.
		f2="pbasicinfo.log"
		while IFS= read -r l2
		do
		readarray -d, -t strarr <<<"l2"
		done < "$f2"

		#make a variable for storing the array, then filter the right information from the file.
		# then change the directory to patients and set the acl permissions for the doctor to rw 
		# for the pmedicalrecord.log.
		doc="${strarr[7]}"
		doc=`echo $doc | sed 's/ *$//g'`
		cd /opt/WellingtonClinic/patients/
		setfacl -R -m u:$doc:rw /opt/WellingtonClinic/patients/${fileName}/pmedicalrecord.log

	#helper for Q10. Runs the searchpatient.sh file once input 3 is selected.
	elif [ $input -eq 3 ]
	then 
	/opt/WellingtonClinic/scripts/searchpatient.sh

	#if input is wrong, it tells the user. 
	else
	echo "This is not a valid option. Please try again."
fi #once finished, leave.
