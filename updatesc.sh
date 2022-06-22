#!/bin/bash
if [ "${EUID}" -ne 0 ]; then
		echo "You need to run this script as root"
		exit 1
fi
if [ "$(systemd-detect-virt)" == "openvz" ]; then
		echo "OpenVZ is not supported"
		exit 1
fi
# ==========================================
# Color
RED='\033[0;31m'
NC='\033[0m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
LIGHT='\033[0;37m'
# ==========================================
# Link Hosting Kalian Untuk Ssh Vpn
akbarvpn="muhaba.sch.id/ssh"
# Link Hosting Kalian Untuk Sstp
akbarvpnn="muhaba.sch.id/sstp"
# Link Hosting Kalian Untuk Ssr
akbarvpnnn="muhaba.sch.id/ssr"
# Link Hosting Kalian Untuk Shadowsocks
akbarvpnnnn="muhaba.sch.id/shadowsocks"
# Link Hosting Kalian Untuk Wireguard
akbarvpnnnnn="muhaba.sch.id/wireguard"
# Link Hosting Kalian Untuk Xray
akbarvpnnnnnn="muhaba.sch.id/xray"
# Link Hosting Kalian Untuk Ipsec
akbarvpnnnnnnn="muhaba.sch.id/ipsec"
# Link Hosting Kalian Untuk Backup
akbarvpnnnnnnnn="muhaba.sch.id/backup"
# Link Hosting Kalian Untuk Websocket
akbarvpnnnnnnnnn="muhaba.sch.id/websocket"
# Link Hosting Kalian Untuk Ohp
akbarvpnnnnnnnnnn="muhaba.sch.id/ohp"
akbarvpngrpc="muhaba.sch.id/grpc"
akbarvpnupdate="muhaba.sch.id/update"

# Getting
echo -e ""
echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━⇱ Auto Install Script VPN Premium ⇲━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${BLUE}"
echo -e ""
sleep 5
MYIP=$(wget -qO- icanhazip.com);
echo "Memeriksa Hak Akses VPS..."
IZIN=$( curl https://ayahost.github.io/izin | grep $MYIP )
if [ $MYIP = $MYIP ]; then
clear
echo -e "${CYAN}Akses Diizinkan...${off}"
sleep 1
else
clear
echo -e "${PURPLE}Akses Diblokir!${off}"
echo "Maaf install Scrip VPN Premium tidak bisa dilanjutkan!"
echo "Hubungi Admin (WA. 082265260276). Telegram: https://t.me/PremiSC."
exit 0
fi
rm -f setup.sh
clear
if [ -f "/etc/xray/domain" ]; then
echo "Script Already Installed"
exit 0
fi
clear
sleep 1
echo -e "${CYAN}MULAI !!!!...Install Script VPN Premium...jangan lupa siapkan satu gelas KOPI...\033[0m${NC}"
echo -e ""
sleep 3

#cd /etc/bin
# hapus dan download di /usr/bin 
cd /usr/bin
rm -rf updatesc
rm -rf menu

# Download file updatesc
wget -O menu https://${akbarvpnupdate}/update/menu.sh
wget -O updatesc https://${akbarvpnupdate}/update/updatesc.sh

#izinkan file updatesc 
chmod +x menu
chmod +x updatesc

# kembali ke root
cd

# hapus file update.sh di root / jika masih ada sisa


# Download update.sh ke root
wget -O update https://${akbarvpnupdate}/update/update.sh
chmod +x update.sh
sed -i -e 's/\r$//' update.sh && screen -S update ./update.sh
clear
sleep 5
echo "Update Script VPN Premum telah selesai"
toilet -f smslant "SALAM SUKSES BRO.." -F gay
sleep 5
rm -rf update.sh
rm -rf updatesc.sh
clear
menu








