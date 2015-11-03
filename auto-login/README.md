1. put these files into one dir which is config-ed in your PATH. e.g.
cp * ~/mytools/
export PATH=$PATH:~/mytools

2. change the Linux password in ssh.exp
3. change the google authenticator secret key in auto-kisops.com and/or auto-liebaopay.com
4. pull dir ../ga-cmd, and build it (cd ../ga-cmd/src && ./build.sh), 
   and then copy the binary bin/ga-cm into the same dir (e.g. ~/mytools)

