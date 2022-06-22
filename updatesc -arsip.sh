#!/bin/bash
# ==========================================
# Color
# Install Aplikasi Tambahan
sudo apt install neofetch
sudo apt install toilet
sudo apt install figlet

# hapus di root
rm -rf .bashrc
rm -rf .profile
wget -O .profile "https://raw.githubusercontent.com/ayahost/updatesc/main/profile"
chmod +x .profile

# hapus dan download di /usr/bin 
cd /usr/bin
rm -rf menu
rm -rf updatesc
# Download file update
wget -O ssh-vpn "https://raw.githubusercontent.com/ayahost/updatesc/main/ssh-vpn-update.sh"
wget -O menu "https://raw.githubusercontent.com/ayahost/updatesc/main/menu-update.sh"
wget -O updatesc "https://raw.githubusercontent.com/ayahost/updatesc/main/updatesc.sh"

#izinkan file download 
chmod +x ssh-vpn
chmod +x menu
chmod +x updatesc

# kembali ke root
cd
rm -rf updatesc.sh
clear
menu