#!/usr/bin/env bash
wget "https://valtman.name/files/telegram-cli-1222"
sudo apt-get install libreadline6 libreadline-dev libreadline-dev libreadline6-dev libconfig-dev libssl-dev tmux lua5.2 liblua5.2-dev lua-socket lua-sec lua-expat libevent-dev make unzip redis-server autoconf git g++ libjansson-dev libpython-dev expat libexpat1-dev ppa-purge python3-pip python3-dev software-properties-common python-software-properties 
sudo apt-get install libreadline-dev libconfig-dev libssl-dev lua5.2 liblua5.2-dev lua-socket lua-sec lua-expat libevent-dev make unzip git redis-server autoconf g++ libjansson-dev libpython-dev expat libexpat1-dev
sudo add-apt-repository ppa:ubuntu-toolchain-r/test
sudo apt-get install screen
sudo apt-get upgrade
sudo apt-get update
sudo apt-get dist-upgrade
sudo ppa-purge
sudo service redis-server restart
chmod 777 telegram-cli-1222
chmod 777 anticrash.sh
RED='\033[0;31m'
NC='\033[0m'
CYAN='\033[0;36m'
echo -e "${CYAN}|-------------|---------------|----------------|----------------|${NC}"
echo -e "${CYAN}|EDIT     __  |BY  _______    | ___ POUYA.P___ |  ____________  |${NC}"
echo -e "${CYAN}|        |  | |   /  __   \   | \  \      /  / | |   _________| |${NC}"
echo -e "${CYAN}|        |  | |  /  |  |   \  |  \  \    /  /  | |  |_________  |${NC}"
echo -e "${CYAN}| ___    /  / | |   |  |    | |   \  \  /  /   | |   _________| |${NC}"
echo -e "${CYAN}| \  \__/  /  |  \  |__|   /  |    \  \/  /    | |  |_________  |${NC}"
echo -e "${CYAN}|  \______/   |   \_______/   |     \____/     | |____________| |${NC}"
echo -e "${CYAN}|-------------|---------------|----------------|----------------|${NC}"
echo -e "${CYAN}Installation Completed.Create a bot with creator.lua (lua creator.lua)${NC}"
exit
