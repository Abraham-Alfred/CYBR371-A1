#!/bin/bash

#This script is for Question 6.

#=====================================================
#This part changes the permissions for the .log files
#=====================================================
#Administrators/root

sudo setfacl -R -m u:root:rwx /opt/WellingtonClinic/staff/administrators/pasa1995/sbasicinfo.log
sudo setfacl -R -m u:root:rwx /opt/WellingtonClinic/staff/doctors/mate1997/sbasicinfo.log
sudo setfacl -R -m u:root:rwx /opt/WellingtonClinic/staff/doctors/mada1993/sbasicinfo.log
sudo setfacl -R -m u:root:rwx /opt/WellingtonClinic/staff/doctors/labo2002/sbasicinfo.log
sudo setfacl -R -m u:root:rwx /opt/WellingtonClinic/staff/doctors/brki2018/sbasicinfo.log
sudo setfacl -R -m u:root:rwx /opt/WellingtonClinic/staff/nurses/phmc2008/sbasicinfo.log
sudo setfacl -R -m u:root:rwx /opt/WellingtonClinic/staff/nurses/lubl2004/sbasicinfo.log
sudo setfacl -R -m u:root:rwx /opt/WellingtonClinic/staff/receptionists/ansm2002/sbasicinfo.log

sudo setfacl -R -m u:root:rwx /opt/WellingtonClinic/patients/mi23122001/pbasicinfo.log
sudo setfacl -R -m u:root:rwx /opt/WellingtonClinic/patients/mi23122001/pmedicalrecord.log
sudo setfacl -R -m u:root:rwx /opt/WellingtonClinic/patients/dt08031993/pbasicinfo.log
sudo setfacl -R -m u:root:rwx /opt/WellingtonClinic/patients/dt08031993/pmedicalrecord.log
sudo setfacl -R -m u:root:rwx /opt/WellingtonClinic/patients/le07041970/pbasicinfo.log
sudo setfacl -R -m u:root:rwx /opt/WellingtonClinic/patients/le07041970/pmedicalrecord.log
sudo setfacl -R -m u:root:rwx /opt/WellingtonClinic/patients/pa13091976/pbasicinfo.log
sudo setfacl -R -m u:root:rwx /opt/WellingtonClinic/patients/pa13091976/pmedicalrecord.log

sudo setfacl -R -m u:pasa1995:rwx /opt/WellingtonClinic/staff/administrators/pasa1995/sbasicinfo.log
sudo setfacl -R -m u:pasa1995:rwx /opt/WellingtonClinic/staff/doctors/mate1997/sbasicinfo.log
sudo setfacl -R -m u:pasa1995:rwx /opt/WellingtonClinic/staff/doctors/mada1993/sbasicinfo.log
sudo setfacl -R -m u:pasa1995:rwx /opt/WellingtonClinic/staff/doctors/labo2002/sbasicinfo.log
sudo setfacl -R -m u:pasa1995:rwx /opt/WellingtonClinic/staff/doctors/brki2018/sbasicinfo.log
sudo setfacl -R -m u:pasa1995:rwx /opt/WellingtonClinic/staff/nurses/phmc2008/sbasicinfo.log
sudo setfacl -R -m u:pasa1995:rwx /opt/WellingtonClinic/staff/nurses/lubl2004/sbasicinfo.log
sudo setfacl -R -m u:pasa1995:rwx /opt/WellingtonClinic/staff/receptionists/ansm2002/sbasicinfo.log

sudo setfacl -R -m u:pasa1995:rwx /opt/WellingtonClinic/patients/mi23122001/pbasicinfo.log
sudo setfacl -R -m u:pasa1995:rwx /opt/WellingtonClinic/patients/mi23122001/pmedicalrecord.log
sudo setfacl -R -m u:pasa1995:rwx /opt/WellingtonClinic/patients/dt08031993/pbasicinfo.log
sudo setfacl -R -m u:pasa1995:rwx /opt/WellingtonClinic/patients/dt08031993/pmedicalrecord.log
sudo setfacl -R -m u:pasa1995:rwx /opt/WellingtonClinic/patients/le07041970/pbasicinfo.log
sudo setfacl -R -m u:pasa1995:rwx /opt/WellingtonClinic/patients/le07041970/pmedicalrecord.log
sudo setfacl -R -m u:pasa1995:rwx /opt/WellingtonClinic/patients/pa13091976/pbasicinfo.log
sudo setfacl -R -m u:pasa1995:rwx /opt/WellingtonClinic/patients/pa13091976/pmedicalrecord.log

#+++++++++++++++++++++++++++++++++++++++++++++++++++
#Doctors

#Mary Teresa
sudo setfacl -R -m u:mate1997:r-- /opt/WellingtonClinic/staff/doctors/mate1997/sbasicinfo.log

#only for the patient(s) assigned to this doctor 
#Masood Mansoori

sudo setfacl -R -m u:mate1997:r-- /opt/WellingtonClinic/patients/mi23122001/pbasicinfo.log
sudo setfacl -R -m u:mate1997:rw- /opt/WellingtonClinic/patients/mi23122001/pmedicalrecord.log

#Mandy Dannel

sudo setfacl -R -m u:mada1993:r-- /opt/WellingtonClinic/staff/doctors/mada1993/sbasicinfo.log

#only for the patient(s) assigned to this doctor 
#David Travert
#Lance Bourne (patient, not the doctor)

sudo setfacl -R -m u:mada1993:r-- /opt/WellingtonClinic/patients/dt08031993/pbasicinfo.log
sudo setfacl -R -m u:mada1993:rw- /opt/WellingtonClinic/patients/dt08031993/pmedicalrecord.log
sudo setfacl -R -m u:mada1993:r-- /opt/WellingtonClinic/patients/le07041970/pbasicinfo.log
sudo setfacl -R -m u:mada1993:rw- /opt/WellingtonClinic/patients/le07041970/pmedicalrecord.log

#Lance Bourne

sudo setfacl -R -m u:labo2002:r-- /opt/WellingtonClinic/staff/doctors/labo2002/sbasicinfo.log

#only for the patient(s) assigned to this doctor 

#I have done this because this doctor does not have any of these patients.
#Once these patients do end up with this doctor, this doctor will have access.

#Masood Mansoori
#David Travert
#Lance Bourne(patient, not the doctor)
#Peter Garcia

sudo setfacl -R -m u:labo2002:r-- /opt/WellingtonClinic/patients/mi23122001/pbasicinfo.log
sudo setfacl -R -m u:labo2002:rw- /opt/WellingtonClinic/patients/mi23122001/pmedicalrecord.log
sudo setfacl -R -m u:labo2002:r-- /opt/WellingtonClinic/patients/dt08031993/pbasicinfo.log
sudo setfacl -R -m u:labo2002:rw- /opt/WellingtonClinic/patients/dt08031993/pmedicalrecord.log
sudo setfacl -R -m u:labo2002:r-- /opt/WellingtonClinic/patients/le07041970/pbasicinfo.log
sudo setfacl -R -m u:labo2002:rw- /opt/WellingtonClinic/patients/le07041970/pmedicalrecord.log
sudo setfacl -R -m u:labo2002:r-- /opt/WellingtonClinic/patients/pa13091976/pbasicinfo.log
sudo setfacl -R -m u:labo2002:rw- /opt/WellingtonClinic/patients/pa13091976/pmedicalrecord.log

#Breana Kipling

sudo setfacl -R -m u:brki2018:r-- /opt/WellingtonClinic/staff/doctors/brki2018/sbasicinfo.log

#only for the patient(s) assigned to this doctor 
#Peter Garcia
sudo setfacl -R -m u:brki2018:r-- /opt/WellingtonClinic/patients/pa13091976/pbasicinfo.log
sudo setfacl -R -m u:brki2018:rw- /opt/WellingtonClinic/patients/pa13091976/pmedicalrecord.log

#++++++++++++++++++++++++++++++++++++++++++++++++++++
#Nurses

sudo setfacl -R -m u:phmc2008:r-- /opt/WellingtonClinic/staff/nurses/phmc2008/sbasicinfo.log
sudo setfacl -R -m u:phmc2008:r-- /opt/WellingtonClinic/patients/mi23122001/pbasicinfo.log
sudo setfacl -R -m u:phmc2008:r-- /opt/WellingtonClinic/patients/mi23122001/pmedicalrecord.log
sudo setfacl -R -m u:phmc2008:r-- /opt/WellingtonClinic/patients/dt08031993/pbasicinfo.log
sudo setfacl -R -m u:phmc2008:r-- /opt/WellingtonClinic/patients/dt08031993/pmedicalrecord.log
sudo setfacl -R -m u:phmc2008:r-- /opt/WellingtonClinic/patients/le07041970/pbasicinfo.log
sudo setfacl -R -m u:phmc2008:r-- /opt/WellingtonClinic/patients/le07041970/pmedicalrecord.log
sudo setfacl -R -m u:phmc2008:r-- /opt/WellingtonClinic/patients/pa13091976/pbasicinfo.log
sudo setfacl -R -m u:phmc2008:r-- /opt/WellingtonClinic/patients/pa13091976/pmedicalrecord.log

sudo setfacl -R -m u:lubl2004:r-- /opt/WellingtonClinic/staff/nurses/lubl2004/sbasicinfo.log
sudo setfacl -R -m u:lubl2004:r-- /opt/WellingtonClinic/patients/mi23122001/pbasicinfo.log
sudo setfacl -R -m u:lubl2004:r-- /opt/WellingtonClinic/patients/mi23122001/pmedicalrecord.log
sudo setfacl -R -m u:lubl2004:r-- /opt/WellingtonClinic/patients/dt08031993/pbasicinfo.log
sudo setfacl -R -m u:lubl2004:r-- /opt/WellingtonClinic/patients/dt08031993/pmedicalrecord.log
sudo setfacl -R -m u:lubl2004:r-- /opt/WellingtonClinic/patients/le07041970/pbasicinfo.log
sudo setfacl -R -m u:lubl2004:r-- /opt/WellingtonClinic/patients/le07041970/pmedicalrecord.log
sudo setfacl -R -m u:lubl2004:r-- /opt/WellingtonClinic/patients/pa13091976/pbasicinfo.log
sudo setfacl -R -m u:lubl2004:r-- /opt/WellingtonClinic/patients/pa13091976/pmedicalrecord.log

#+++++++++++++++++++++++++++++++++++++++++++++++++++++
#Receptionists

sudo setfacl -R -m u:ansm2002:r-- /opt/WellingtonClinic/staff/receptionists/ansm2002/sbasicinfo.log
sudo setfacl -R -m u:ansm2002:rw- /opt/WellingtonClinic/patients/mi23122001/pbasicinfo.log
sudo setfacl -R -m u:ansm2002:--- /opt/WellingtonClinic/patients/mi23122001/pmedicalrecord.log
sudo setfacl -R -m u:ansm2002:rw- /opt/WellingtonClinic/patients/dt08031993/pbasicinfo.log
sudo setfacl -R -m u:ansm2002:--- /opt/WellingtonClinic/patients/dt08031993/pmedicalrecord.log
sudo setfacl -R -m u:ansm2002:rw- /opt/WellingtonClinic/patients/le07041970/pbasicinfo.log
sudo setfacl -R -m u:ansm2002:--- /opt/WellingtonClinic/patients/le07041970/pmedicalrecord.log
sudo setfacl -R -m u:ansm2002:rw- /opt/WellingtonClinic/patients/pa13091976/pbasicinfo.log
sudo setfacl -R -m u:ansm2002:--- /opt/WellingtonClinic/patients/pa13091976/pmedicalrecord.log

#=====================================================
#This part changes the permission for the .sh files.
#=====================================================
#Administrators/root

sudo setfacl -R -m u:root:rwx /opt/WellingtonClinic/scripts/file-system.sh
sudo setfacl -R -m u:root:rwx /opt/WellingtonClinic/scripts/staff-and-acls.sh
sudo setfacl -R -m u:root:rwx /opt/WellingtonClinic/scripts/acls.sh
sudo setfacl -R -m u:root:rwx /opt/WellingtonClinic/scripts/patients.sh
sudo setfacl -R -m u:root:rwx /opt/WellingtonClinic/scripts/visit.sh
sudo setfacl -R -m u:root:rwx /opt/WellingtonClinic/scripts/searchpatient.sh
sudo setfacl -R -m u:root:rwx /opt/WellingtonClinic/scripts/audit.sh

sudo setfacl -R -m u:pasa1995:rwx /opt/WellingtonClinic/scripts/file-system.sh
sudo setfacl -R -m u:pasa1995:rwx /opt/WellingtonClinic/scripts/staff-and-acls.sh
sudo setfacl -R -m u:pasa1995:rwx /opt/WellingtonClinic/scripts/acls.sh
sudo setfacl -R -m u:pasa1995:rwx /opt/WellingtonClinic/scripts/patients.sh
sudo setfacl -R -m u:pasa1995:rwx /opt/WellingtonClinic/scripts/visit.sh
sudo setfacl -R -m u:pasa1995:rwx /opt/WellingtonClinic/scripts/searchpatient.sh
sudo setfacl -R -m u:pasa1995:rwx /opt/WellingtonClinic/scripts/audit.sh

#+++++++++++++++++++++++++++++++++++++++++++++++++++++
#Doctors

sudo setfacl -R -m u:mate1997:--- /opt/WellingtonClinic/scripts/file-system.sh
sudo setfacl -R -m u:mate1997:--- /opt/WellingtonClinic/scripts/staff-and-acls.sh
sudo setfacl -R -m u:mate1997:--- /opt/WellingtonClinic/scripts/acls.sh
sudo setfacl -R -m u:mate1997:r-x /opt/WellingtonClinic/scripts/patients.sh
sudo setfacl -R -m u:mate1997:r-x /opt/WellingtonClinic/scripts/visit.sh
sudo setfacl -R -m u:mate1997:r-x /opt/WellingtonClinic/scripts/searchpatient.sh
sudo setfacl -R -m u:mate1997:--- /opt/WellingtonClinic/scripts/audit.sh

sudo setfacl -R -m u:mada1993:--- /opt/WellingtonClinic/scripts/file-system.sh
sudo setfacl -R -m u:mada1993:--- /opt/WellingtonClinic/scripts/staff-and-acls.sh
sudo setfacl -R -m u:mada1993:--- /opt/WellingtonClinic/scripts/acls.sh
sudo setfacl -R -m u:mada1993:r-x /opt/WellingtonClinic/scripts/patients.sh
sudo setfacl -R -m u:mada1993:r-x /opt/WellingtonClinic/scripts/visit.sh
sudo setfacl -R -m u:mada1993:r-x /opt/WellingtonClinic/scripts/searchpatient.sh
sudo setfacl -R -m u:mada1993:--- /opt/WellingtonClinic/scripts/audit.sh

sudo setfacl -R -m u:labo2002:--- /opt/WellingtonClinic/scripts/file-system.sh
sudo setfacl -R -m u:labo2002:--- /opt/WellingtonClinic/scripts/staff-and-acls.sh
sudo setfacl -R -m u:labo2002:--- /opt/WellingtonClinic/scripts/acls.sh
sudo setfacl -R -m u:labo2002:r-x /opt/WellingtonClinic/scripts/patients.sh
sudo setfacl -R -m u:labo2002:r-x /opt/WellingtonClinic/scripts/visit.sh
sudo setfacl -R -m u:labo2002:r-x /opt/WellingtonClinic/scripts/searchpatient.sh
sudo setfacl -R -m u:labo2002:--- /opt/WellingtonClinic/scripts/audit.sh

sudo setfacl -R -m u:brki2018:--- /opt/WellingtonClinic/scripts/file-system.sh
sudo setfacl -R -m u:brki2018:--- /opt/WellingtonClinic/scripts/staff-and-acls.sh
sudo setfacl -R -m u:brki2018:--- /opt/WellingtonClinic/scripts/acls.sh
sudo setfacl -R -m u:brki2018:r-x /opt/WellingtonClinic/scripts/patients.sh
sudo setfacl -R -m u:brki2018:r-x /opt/WellingtonClinic/scripts/visit.sh
sudo setfacl -R -m u:brki2018:r-x /opt/WellingtonClinic/scripts/searchpatient.sh
sudo setfacl -R -m u:brki2018:--- /opt/WellingtonClinic/scripts/audit.sh

#+++++++++++++++++++++++++++++++++++++++++++++++++++++
#Nurses

sudo setfacl -R -m u:phmc2008:--- /opt/WellingtonClinic/scripts/file-system.sh
sudo setfacl -R -m u:phmc2008:--- /opt/WellingtonClinic/scripts/staff-and-acls.sh
sudo setfacl -R -m u:phmc2008:--- /opt/WellingtonClinic/scripts/acls.sh
sudo setfacl -R -m u:phmc2008:--- /opt/WellingtonClinic/scripts/patients.sh
sudo setfacl -R -m u:phmc2008:--- /opt/WellingtonClinic/scripts/visit.sh
sudo setfacl -R -m u:phmc2008:r-x /opt/WellingtonClinic/scripts/searchpatient.sh
sudo setfacl -R -m u:phmc2008:--- /opt/WellingtonClinic/scripts/audit.sh

sudo setfacl -R -m u:lubl2004:--- /opt/WellingtonClinic/scripts/file-system.sh
sudo setfacl -R -m u:lubl2004:--- /opt/WellingtonClinic/scripts/staff-and-acls.sh
sudo setfacl -R -m u:lubl2004:--- /opt/WellingtonClinic/scripts/acls.sh
sudo setfacl -R -m u:lubl2004:--- /opt/WellingtonClinic/scripts/patients.sh
sudo setfacl -R -m u:lubl2004:--- /opt/WellingtonClinic/scripts/visit.sh
sudo setfacl -R -m u:lubl2004:r-x /opt/WellingtonClinic/scripts/searchpatient.sh
sudo setfacl -R -m u:lubl2004:--- /opt/WellingtonClinic/scripts/audit.sh

#+++++++++++++++++++++++++++++++++++++++++++++++++++++
#Receptionists

sudo setfacl -R -m u:ansm2002:--- /opt/WellingtonClinic/scripts/file-system.sh
sudo setfacl -R -m u:ansm2002:--- /opt/WellingtonClinic/scripts/staff-and-acls.sh
sudo setfacl -R -m u:ansm2002:--- /opt/WellingtonClinic/scripts/acls.sh
sudo setfacl -R -m u:ansm2002:r-x /opt/WellingtonClinic/scripts/patients.sh
sudo setfacl -R -m u:ansm2002:--- /opt/WellingtonClinic/scripts/visit.sh
sudo setfacl -R -m u:ansm2002:r-x /opt/WellingtonClinic/scripts/searchpatient.sh
sudo setfacl -R -m u:ansm2002:--- /opt/WellingtonClinic/scripts/audit.sh

#=========================================================
#This part changes the permission for the WellingtonClinic
#directory and its subdirectories.
#=========================================================
#Administrators/root

sudo setfacl -R -m u:root:rwx /opt/WellingtonClinic
sudo setfacl -R -m u:root:rwx /opt/WellingtonClinic/staff
sudo setfacl -R -m u:root:rwx /opt/WellingtonClinic/scripts
sudo setfacl -R -m u:root:rwx /opt/WellingtonClinic/patients

sudo setfacl -R -m u:pasa1995:rwx /opt/WellingtonClinic
sudo setfacl -R -m u:pasa1995:rwx /opt/WellingtonClinic/staff
sudo setfacl -R -m u:pasa1995:rwx /opt/WellingtonClinic/scripts
sudo setfacl -R -m u:pasa1995:rwx /opt/WellingtonClinic/patients

#Doctors

sudo setfacl -R -m u:mate1997:r-x /opt/WellingtonClinic
sudo setfacl -R -m u:mate1997:r-x /opt/WellingtonClinic/staff
sudo setfacl -R -m u:mate1997:r-x /opt/WellingtonClinic/scripts
sudo setfacl -R -m u:mate1997:r-x /opt/WellingtonClinic/patients

sudo setfacl -R -m u:mada1993:r-x /opt/WellingtonClinic
sudo setfacl -R -m u:mada1993:r-x /opt/WellingtonClinic/staff
sudo setfacl -R -m u:mada1993:r-x /opt/WellingtonClinic/scripts
sudo setfacl -R -m u:mada1993:r-x /opt/WellingtonClinic/patients

sudo setfacl -R -m u:labo2002:r-x /opt/WellingtonClinic
sudo setfacl -R -m u:labo2002:r-x /opt/WellingtonClinic/staff
sudo setfacl -R -m u:labo2002:r-x /opt/WellingtonClinic/scripts
sudo setfacl -R -m u:labo2002:r-x /opt/WellingtonClinic/patients

sudo setfacl -R -m u:brki2018:r-x /opt/WellingtonClinic
sudo setfacl -R -m u:brki2018:r-x /opt/WellingtonClinic/staff
sudo setfacl -R -m u:brki2018:r-x /opt/WellingtonClinic/scripts
sudo setfacl -R -m u:brki2018:r-x /opt/WellingtonClinic/patients

#Nurses

sudo setfacl -R -m u:phmc2008:r-x /opt/WellingtonClinic
sudo setfacl -R -m u:phmc2008:r-x /opt/WellingtonClinic/staff
sudo setfacl -R -m u:phmc2008:r-x /opt/WellingtonClinic/scripts
sudo setfacl -R -m u:phmc2008:r-x /opt/WellingtonClinic/patients

sudo setfacl -R -m u:lubl2004:r-x /opt/WellingtonClinic
sudo setfacl -R -m u:lubl2004:r-x /opt/WellingtonClinic/staff
sudo setfacl -R -m u:lubl2004:r-x /opt/WellingtonClinic/scripts
sudo setfacl -R -m u:lubl2004:r-x /opt/WellingtonClinic/patients

#Receptionists

sudo setfacl -R -m u:ansm2002:r-x /opt/WellingtonClinic
sudo setfacl -R -m u:ansm2002:r-x /opt/WellingtonClinic/staff
sudo setfacl -R -m u:ansm2002:r-x /opt/WellingtonClinic/scripts
sudo setfacl -R -m u:ansm2002:r-x /opt/WellingtonClinic/patients
