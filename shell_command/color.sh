#!/bin/bash

# Define color codes
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

echo -e "${GREEN}Success: Operation completed successfully!${NC}"
echo -e "${YELLOW}Warning: Proceed with caution.${NC}"
echo -e "${RED}Error: Something went wrong!${NC}"
echo -e "${BLUE}Info: This is an informational message.${NC}"
