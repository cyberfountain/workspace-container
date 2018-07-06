#!/usr/bin/env bash
# Workspace-Cli. Lukasz Wisniewski

clear
printf "\n"
printf " ${Blue}WORK${NC}SPACE\n"
printf "\n"

printf " ${Yellow}Usage:\n"
printf "  ${NC}command [options]\n"
printf "\n"

printf " ${Yellow}Options:\n"
printf "  ${Green}-h, --help                ${NC}Display this help message\n"
printf "\n"

printf " ${Yellow}Available commands:\n"
printf "  ${Green}mysql                     ${NC}Run mysql client\n"
printf "  ${Green}redis                     ${NC}Run redis cli\n"
printf "  ${Green}install [option]          ${NC}Install helper command\n"
printf "\n"

. ${__comm}/install.sh