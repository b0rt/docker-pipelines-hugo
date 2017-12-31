#!/bin/bash
# This UNIX shell script FTPs all the files in the input directory to a remote directory
# It uses a UNIX Shell "hear document" to read the commands to the FTP program from the shell file
# You have to use the -n option to the FTP command to disable the prompting for the password
# the quote in front of the ftp user and pass are also necessary to disable reading from stdin
# the prompt must be turned off for the multi-put to not prompt the user

# assumes that 'hugo' has run before and
# all assets reside in public/

LOCALDIR=public
REMOTESERVER=$3
REMOTEPATH=testdeploy2/
LOGIN=$1
PASSWORD=$2

cd $LOCALDIR
ncftpput -Rv -u $LOGIN -p $PASSWORD $REMOTESERVER testdeploy2/ *
bye
EOF
