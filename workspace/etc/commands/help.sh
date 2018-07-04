#!/usr/bin/env bash
# Workspace-Cli. Lukasz Wisniewski

printf "\n
${Blue}██╗    ██╗ ██████╗ ██████╗ ██╗  ██╗${NC}███████╗██████╗  █████╗  ██████╗███████╗
${Blue}██║    ██║██╔═══██╗██╔══██╗██║ ██╔╝${NC}██╔════╝██╔══██╗██╔══██╗██╔════╝██╔════╝
${Blue}██║ █╗ ██║██║   ██║██████╔╝█████╔╝ ${NC}███████╗██████╔╝███████║██║     █████╗  
${Blue}██║███╗██║██║   ██║██╔══██╗██╔═██╗ ${NC}╚════██║██╔═══╝ ██╔══██║██║     ██╔══╝  
${Blue}╚███╔███╔╝╚██████╔╝██║  ██║██║  ██╗${NC}███████║██║     ██║  ██║╚██████╗███████╗
${Blue} ╚══╝╚══╝  ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝${NC}╚══════╝╚═╝     ╚═╝  ╚═╝ ╚═════╝╚══════╝\n\n"

printf "${Yellow}Usage:\n\n"

printf "  ${NC}command [options]\n"
printf "  ${NC}command [argument]\n\n"

printf "${Yellow}Options:\n\n"

printf "  ${Green}-h, --help    		${NC}Display this help message\n"
printf "  ${Green}-v, --version 		${NC}Display this application version\n\n"

printf "${Yellow}Available commands:\n\n"

printf "  ${Green}mysql				${NC}Run mysql client\n"
printf "  ${Green}redis				${NC}Run redis cli\n"