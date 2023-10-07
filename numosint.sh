#!/usr/bin/bash
# Author : Bishal Singh [Alienkrishn]
# copy krne se kuch nhi sikhoge khud ka dimag v istemaal kr le
# module in used - truecallerjs by Sumithemmadi
#

printf "\a\a\e[32;1m
                ▗    ▐
▛▀▖▌ ▌▛▚▀▖▞▀▖▞▀▘▄ ▛▀▖▜▀
▌ ▌▌ ▌▌▐ ▌▌ ▌▝▀▖▐ ▌ ▌▐ ▖
▘ ▘▝▀▘▘▝ ▘▝▀ ▀▀ ▀▘▘ ▘ ▀  installing truecaller in termux
\e[0;1mThis script uses trucaller api to get phonebumbers informations

Script by \e[33mAlienkrishn
\e[0m
"
tauth="/data/data/com.termux/files/home/.config/truecallerjs"
if [[ -d "/data/data/com.termux/files/home/.config/truecallerjs" ]]; then
    echo -e "existing directory found removing it"
    sleep 3
    rm -rf /data/data/com.termux/files/home/.config/truecallerjs
else
    echo -e "\e[32;1m--Installing requirements"
    apt install nodejs -y
    npm install -g truecallerjs
fi
if hash ! toilet > /dev/null 2>&1 ; then
echo -e "\e[32m Installing other requirements..."
apt install -y toilet figlet 
fi
echo -e "writting json file for login"
sleep 3
mkdir -p /data/data/com.termux/files/home/.config/truecallerjs
cat > $tauth/authkey.json <<- EOF
{
   "status": 2,
   "message": "Verified",
   "installationId": "a1i08--iITe08V7-uHTRt_NzOfIcsi_1ddALfLZai3knO6atEcZX1Ty4Q6zMS3ln",
   "ttl": 259200,
   "userId": 13033518513127936,
   "suspended": false,
   "phones": [
      {
         "phoneNumber": 919832647808,
         "countryCode": "IN",
         "priority": 1
      }
   ] }
   
EOF
cat > $PATH/numosint <<- EOF
figlet -f smblock numosint | lolcat
echo Truecaller api on termux
echo Author : Alienkrishn
read -p "Enter Number : " num
truecallerjs -s \$num
EOF
chmod 777 $PATH/numosint
clear
echo -e "installed succesfuly now launch it by typing\n\e[32;1m numosint\e[0m from any directory"




