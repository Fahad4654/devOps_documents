#!/bin/bash

# Define color codes
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color

run_step() {
  description=$1
  command=$2

  echo -e "${YELLOW}Starting ${description}...${NC}"
  eval "$command"
  if [ $? -eq 0 ]; then
    echo -e "${GREEN}Task: Starting ${description} is completed successfully!${NC}"
  else
    echo -e "${RED}Task: Starting ${description} is failed!${NC}"
  fi
  echo ""
}

run_step "mysql" "service mysql start"
run_step "nginx" "service nginx start"
run_step "postgresql" "service postgresql start"
run_step "redis" "service redis start"
run_step "mongodb" "service mongod start"
run_step "supervisor" "service supervisor start"
run_step "rabbitmq-server" "service rabbitmq-server start"
run_step "apache2" "service apache2 start"