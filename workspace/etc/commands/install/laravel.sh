#!/usr/bin/env bash
# Workspace-Cli. Lukasz Wisniewski
printf "\n"
message "cyan" "Installing Laravel..."
printf "\n"

composer create-project --prefer-dist laravel/laravel .

printf "\n"
message "cyan" "All Done!"
printf "\n"