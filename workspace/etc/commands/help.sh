#!/usr/bin/env bash
# Workspace-Cli. Lukasz Wisniewski

clear

printf "
${Blue}██╗    ██╗ ██████╗ ██████╗ ██╗  ██╗${NC}███████╗██████╗  █████╗  ██████╗███████╗
${Blue}██║    ██║██╔═══██╗██╔══██╗██║ ██╔╝${NC}██╔════╝██╔══██╗██╔══██╗██╔════╝██╔════╝
${Blue}██║ █╗ ██║██║   ██║██████╔╝█████╔╝ ${NC}███████╗██████╔╝███████║██║     █████╗  
${Blue}██║███╗██║██║   ██║██╔══██╗██╔═██╗ ${NC}╚════██║██╔═══╝ ██╔══██║██║     ██╔══╝  
${Blue}╚███╔███╔╝╚██████╔╝██║  ██║██║  ██╗${NC}███████║██║     ██║  ██║╚██████╗███████╗
${Blue} ╚══╝╚══╝  ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝${NC}╚══════╝╚═╝     ╚═╝  ╚═╝ ╚═════╝╚══════╝\n"
printf "\n"

printf "${Yellow}Usage:\n"
printf "\n"

printf "  ${NC}command [options]\n"
printf "  ${NC}command [argument]\n"
printf "\n"

printf "${Yellow}Options:\n"
printf "\n"
printf "  ${Green}-h, --help    		${NC}Display this help message\n"
printf "\n"

printf "${Yellow}Available commands:\n"
printf "\n"

printf "  ${Green}mysql				${NC}Run mysql client\n"
printf "  ${Green}redis				${NC}Run redis cli\n"

printf "\n"