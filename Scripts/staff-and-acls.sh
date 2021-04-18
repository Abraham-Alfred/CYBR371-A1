#!/bin/bash
# This file generates the staff and acls file system.

# Question 3
groupadd -f Administrators
groupadd -f Receptionists
groupadd -f Doctors
groupadd -f Nurses

cd /opt/WellingtonClinic/
cd staff
cd doctors

sudo usermod -a -G sudo Administrators
chmod -R 775 staff

echo ""
echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo "+ This is the staff generator for the Wellington Clinic. +"
echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo ""
echo "+++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo "+                                                   +"
echo "+ The following groups and users will be generated. +"
echo "+                                                   +"
echo "+++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo ""

echo "+++++++++++++++++++++++"
echo "+                     +"
echo "+      Doctors:       +"
echo "+ 1) Mary Teresa      +"
echo "+ 2) Breana Kipling   +"
echo "+ 3) Mandy Dannel     +"
echo "+ 4) Lance Bourne     +"
echo "+                     +"
echo "+++++++++++++++++++++++" 

# Starts making the doctor users. Deletes them if they exist otherwise keeps things the same.

userdel mate1997
useradd mate1997
sudo mkhomedir_helper mate1997
usermod -a -G Doctors mate1997

mkdir -p mate1997
	cd mate1997
	touch sbasicinfo.log
	>sbasicinfo.log
	echo -n > sbasicinfo.log
	printf 'Mary Teresa, Date of Birth: 03/08/1953, Date Joined the clinic: 1997, Address: 173 Rnd street Kelburn, Email: m.theresa@yahoo.com, Phone: 04528293' > sbasicinfo.log

chmod -R 774 sbasicinfo.log

cd /opt/WellingtonClinic/staff/doctors/

userdel brki2018
useradd brki2018
sudo mkhomedir_helper brki2018
usermod -a -G Doctors brki2018

mkdir -p brki2018
	cd brki2018
	touch sbasicinfo.log
	>sbasicinfo.log
	echo -n > sbasicinfo.log
	printf 'Breana Kipling, Date of Birth: 03/08/1991, Date Joined the clinic: 2018, Address: 4548 River Road HugoTown Auckland 5513, Email: szzh8@tempmail.net, Phone:071943668' > sbasicinfo.log

chmod -R 774 sbasicinfo.log

cd /opt/WellingtonClinic/staff/doctors/

userdel mada1993
useradd mada1993
sudo mkhomedir_helper mada1993
usermod -a -G Doctors mada1993

mkdir -p mada1993
	cd mada1993
	touch sbasicinfo.log
	>sbasicinfo.log
	echo -n > sbasicinfo.log
	printf 'Mandy Dannel, Date of Birth: 15/12/1965, Date joined the clinic: 1993, Address: 343 Norma Avenue Dayton Napier 6731, Email: mandydl@gmail.com, Phone: 052637445' > sbasicinfo.log

chmod -R 774 sbasicinfo.log

cd /opt/WellingtonClinic/staff/doctors/

userdel labo2002
useradd labo2002
sudo mkhomedir_helper labo2002
usermod -a -G Doctors labo2002

mkdir -p labo2002
	cd labo2002
	touch sbasicinfo.log
	>sbasicinfo.log
	echo -n > sbasicinfo.log
	printf 'Lance Bourne, Date of Birth: 07/04/1970, Date joined the clinic: 2002, Address: 25 Ferguson Street Franklin Greytown 8567, Email: lancb@outlook.com, Phone: 083736456' > sbasicinfo.log

#give the right permissions for the sbasicinfo.log file.
chmod -R 774 sbasicinfo.log

#change directory and make the nurses users. Deletes them if they exist otherwise things stay the same.
cd /opt/WellingtonClinic/staff/nurses/

echo "+++++++++++++++++++++++"
echo "+                     +"
echo "+       Nurses:       +"
echo "+ 1) Lucia Blakeley   +"
echo "+ 2) Phil McGraw      +"
echo "+                     +"
echo "+++++++++++++++++++++++"

userdel lubl2004
useradd lubl2004
sudo mkhomedir_helper lubl2004
usermod -a -G Nurses lubl2004

mkdir -p lubl2004
	cd lubl2004
	touch sbasicinfo.log
	>sbasicinfo.log
	echo -n > sbasicinfo.log
	printf 'Lucia Blakeley, Date of Birth: 11/09/1980, Date joined the clinic: 2004, Address: 935 Massachusetts Avenue Hamilton 4562, Email: lucyblak@outlook.com, Phone: 38347463' > sbasicinfo.log

chmod -R 774 sbasicinfo.log

cd /opt/WellingtonClinic/staff/nurses/

userdel phmc2008
useradd phmc2008
sudo mkhomedir_helper phmc2008
usermod -a -G Nurses phmc2008

mkdir -p phmc2008
	cd phmc2008
	touch sbasicinfo.log
	>sbasicinfo.log
	echo -n > sbasicinfo.log
	printf 'Phil McGraw, Date of Birth: 15/04/1984, Date joined the clinic: 2008, Address: 45 Razyn Street Petone Lower Hutt 8435, Email: philmcg@gmail.com, Phone: 02384756' > sbasicinfo.log

#set the correct permissions for sbasicinfo.log
chmod -R 774 sbasicinfo.log

#change directory and make the receptionist users. Deletes them if they exist otherwise things stay the same.
cd /opt/WellingtonClinic/staff/receptionists/

echo "+++++++++++++++++++++++"
echo "+                     +"
echo "+    Receptionists:   +"
echo "+ 1) Andy Smith       +"
echo "+                     +"
echo "+++++++++++++++++++++++"

userdel ansm2002
useradd ansm2002
sudo mkhomedir_helper ansm2002
usermod -a -G Receptionists ansm2002

mkdir -p ansm2002
	cd ansm2002
	touch sbasicinfo.log
	>sbasicinfo.log
	echo -n > sbasicinfo.log
	printf 'Andy Smith, Date of Birth: 13/09/1974, Date joined the clinic: 2002, Address: 58 Foster avenue Wellington 5011, Email: smith.andy74@gmail.com, Phone: 07284756' > sbasicinfo.log

# set the correct permissions for the sbasicinfo.log 
chmod -R 774 sbasicinfo.log

#change directory and make the admin users. Deletes them if they exist otherwise things stay the same.
cd /opt/WellingtonClinic/staff/administrators/

echo "++++++++++++++++++++++++"
echo "+                      +"
echo "+    Administrators:   +"
echo "+ 1) Pauline Sanderson +"
echo "+                      +"
echo "++++++++++++++++++++++++"

userdel pasa1995
useradd pasa1995
sudo mkhomedir_helper pasa1995
usermod -a -G root pasa1995

mkdir -p pasa1995
	cd pasa1995
	touch sbasicinfo.log
	>sbasicinfo.log
	echo -n > sbasicinfo.log
	printf 'Pauline Sanderson, Date-of-Birth: 08/03/1993, Date-joined-the-clinic: 1995, Address: 2452 Randolph Street Bedford Auckland 7752, Email: paulsand@admins.co.nz, Phone: 03747543' > sbasicinfo.log

#set the right permissions for the sbasicinfo.log file.
chmod -R 774 sbasicinfo.log

#change directory back to opt.
cd /opt/
