#!/bin/bash

#This is the script for Question 11

echo ""
echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo "+ This is the auditing script for the Wellington Clinic. +"
echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo ""
echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo "+                                                        +"
echo "+   Select an input from 1, 2, 3 or 4:                   +"
echo "+      [1] Start the audit.                              +"
echo "+      [2] Stop the audit.                               +"
echo "+      [3] See the result of the audit.                  +"
echo "+      [4] Restart the audit.                            +"
echo "+                                                        +"
echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"

#Start reading the input
read input

	#Runs the auditd and sets the right permissions for auditctl.
	if [ $input -eq 1 ]
		then
			sudo service auditd start
      			sudo auditctl -w /opt/WellingtonClinic -p wa -k log_WellingtonClinic
	#Stops the service once the user reruns this script and presses 2.
	elif [ $input -eq 2 ]
		then
			sudo service auditd stop
	#Gives a report to the user of what log information was captured.
	elif [ $input -eq 3 ]
                then
                        sudo aureport -i -k
	#Restarts the service if the user wants to rerun it.
	elif [ $input -eq 4 ]
		then
			sudo service auditd restart
	#Tells the user that the input is wrong.
	else
		echo "This is an invalid imput. Please try again."
	#Once done, exit.
	fi
