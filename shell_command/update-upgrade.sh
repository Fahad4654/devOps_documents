#!/bin/bash

# Define color codes
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color

run_step() {
  description=$1
  command=$2

  echo -e "${YELLOW}${description}...${NC}"
  eval "$command"
  if [ $? -eq 0 ]; then
    echo -e "${GREEN}Task completed successfully!${NC}"
  else
    echo -e "${RED}Task failed!${NC}"
  fi
  echo ""
}

run_step "Updating" "apt-get update -y"
run_step "Upgrading" "apt-get upgrade -y"
run_step "Dist-upgrading" "apt-get dist-upgrade -y"
run_step "Autoremoving" "apt-get autoremove -y"
run_step "Autocleaning" "apt-get autoclean -y"
run_step "Snap refreshing" "snap refresh"
run_step "Old package removing" "/home/fahad/remove.sh"
