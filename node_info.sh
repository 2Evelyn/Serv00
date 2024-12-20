#!/bin/bash

YELLOW='\033[33m'
RESET='\033[0m'

red() {
	echo -e "${RED}${1}${RESET}"
}

yellow() {
	echo -e "${YELLOW}${1}${RESET}"
}
clear
yellow "节点信息："
echo
[[ "$HOSTNAME" == "s1.ct8.pl" ]] && WORKDIR="domains/${USERNAME}.ct8.pl/logs" || WORKDIR="domains/${USERNAME}.serv00.net/logs"
cat $WORKDIR/list.txt
echo
