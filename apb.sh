#!/bin/bash

if [ "$(dpkg --get-selections curl)" = "" ]; then
	sudo apt-get install curl
fi

#ip.apbmod.com instead of icanhazip.com maybe
startServer() {
	 ./cod4_lnxded + set fs_game "mods/apb" + set sv_punkbuster 1 + set dedicated 2 + set developer 2 + set developer_script 1 + set net_ip "$(curl -s --m 3 icanhazip.com)" + set server "$2 ^7[^6BETA^7]" + set logfile 2 + sets gamemode $3 + set g_gametype apb + set sv_mapRotation "map mp_apb_$1" + devmap "mp_apb_$1"
}

cd "/home/icore/.wine/drive_c/Program Files/Activision/Call of Duty 4 - Modern Warfare/"