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
echo -e "writting json file for login"
sleep 3
mkdir -p /data/data/com.termux/files/home/.config/truecallerjs
cat > $tauth/authkey.json <<- EOF
{
   "status": 2,
   "message": "Verified",
   "installationId": "a1i0J--gz5GL4FZVHFKyldww_XuagVvqfWQmqwQOC0TUVaQy99KTy1IKs6u4vX4X",
   "ttl": 259200,
   "userId": 12662406846417184,
   "suspended": false,
   "phones": [
      {
         "phoneNumber": 917863901422,
         "countryCode": "IN",
         "priority": 1
      }
   ]
}
EOF
curl -LO https://raw.githubusercontent.com/Anon4You/NumOsint/main/lib/xcx && mv xcx numosint && mv numosint $PATH
chmod 777 $PATH/numosint
clear
echo -e "installed succesfuly now launch it by typing\n\e[32;1m numosint\e[0m from any directory"




