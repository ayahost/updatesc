#!/bin/bash
# ==========================================
# hapus file di root
#rm -rf revisi.sh
rm -rf update.sh

# Install Aplikasi Tambahan
#sudo apt install neofetch
#apt-get install apache2
sudo apt install unzip

# hapus di root
#rm -rf .profile
#wget -O .profile "https://raw.githubusercontent.com/ayahost/updatesc/main/profile"
#chmod +x .profile

# hapus dan download di /usr/bin 
#cd /usr/bin
#rm -rf menu
#rm -rf updatesc

# Download file update
#wget -O ssh-vpn "https://raw.githubusercontent.com/ayahost/updatesc/main/ssh-vpn-update.sh"
#wget -O menu "https://raw.githubusercontent.com/ayahost/updatesc/main/menu-update.sh"
#wget -O revisi.sh "https://raw.githubusercontent.com/ayahost/updatesc/main/Revisi.txt"
#wget -q -O xampp.exe "https://downloadsapachefriends.global.ssl.fastly.net/8.1.6/xampp-windows-x64-8.1.6-0-VS16-installer.exe"
#wget https://downloadsapachefriends.global.ssl.fastly.net/8.1.6/xampp-windows-x64-8.1.6-0-VS16-installer.exe

#izinkan file download 
#chmod +x ssh-vpn
#chmod +x menu
#chmod +x revisi.sh

# kembali ke root
cd
rm -rf update.sh
clear
menu
