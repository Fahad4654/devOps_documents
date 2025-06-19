#!/bin/bash

# Define color codes
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color

run_step() {
  description=$1
  command=$2

  echo -e "${YELLOW}Stoping ${description}...${NC}"
  eval "$command"
  if [ $? -eq 0 ]; then
    echo -e "${GREEN}Task: Stopping ${description} is completed successfully!${NC}"
  else
    echo -e "${RED}Task: Stopping ${description} is failed!${NC}"
  fi
  echo ""
}

run_step "mysql" "service mysql stop"
run_step "nginx" "service nginx stop"
run_step "postgresql" "service postgresql stop"
run_step "redis" "service redis stop"
run_step "mongodb" "service mongod stop"
run_step "supervisor" "service supervisor stop"
run_step "rabbitmq-server" "service rabbitmq-server stop"
run_step "apache2" "service apache2 stop"