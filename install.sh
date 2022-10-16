#!/bin/bash

# Clear Screen
tput reset 2>/dev/null || clear

# Colours (or Colors in en_US)
RED='\033[0;31m'
GREEN='\033[0;32m'
PURPLE='\033[0;35m'
BLUE='\033[0;34m'
NORMAL='\033[0m'

# Abort Function
function abort(){
    [ ! -z "$@" ] && echo -e ${RED}"${@}"${NORMAL}
    exit 1
}

# Banner
function __bannerTop() {
	echo -e \
	${GREEN}"_       ___ _____       ____  __  ______     __ 
| |     / (_) __(_)     / __ )/ / / / / /__  / /_
| | /| / / / /_/ /_____/ __  / / / / / / _ \/ __/
| |/ |/ / / __/ /_____/ /_/ / /_/ / / /  __/ /_  
|__/|__/_/_/ /_/     /_____/\____/_/_/\___/\__/  
	"${NC}
}

# Welcome Banner
printf "\e[32m" && __bannerTop && printf "\e[0m"

# Minor Sleep
sleep 1

pkg install -y root-repo
pkg install -y git tsu python wpa-supplicant pixiewps openssl

chmod +x script.py
chmod +x attack.sh

# Done!
echo -e ${GREEN}"Setup Complete!"${NORMAL}
