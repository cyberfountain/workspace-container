#!/usr/bin/env bash
# Workspace-Cli. Lukasz Wisniewski

function error() {
	printf "\n  ${Red}Whoops! $1${NC}\n\n"
}

function success() {
	printf "\n  ${Green}All Good! $1${NC}\n\n"
}

function message() {
	case "$1" in
		'green') printf " ${Green}${2}${NC}\n" ;;
		'yellow') printf " ${Yellow}${2}${NC}\n" ;;
		'link') printf " ${UPurple}${2}${NC}\n" ;;
		'blue') printf " ${Blue}${2}${NC}\n" ;;
		'red') printf " ${Red}${2}${NC}\n" ;;
		*) printf " ${2}\n" ;;
	esac
}