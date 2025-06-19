#!/bin/bash

# Define color codes
BLACK='\033[0;30m'
DARKGRAY='\033[1;30m'
RED='\033[0;31m'
LIGHTRED='\033[1;31m'
GREEN='\033[0;32m'
LIGHTGREEN='\033[1;32m'
ORANGE='\033[0;33m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
LIGHTBLUE='\033[1;34m'
PURPLE='\033[0;35m'
LIGHTPURPLE='\033[1;35m'
CYAN='\033[0;36m'
LIGHTCYAN='\033[1;36m'
LIGHTGRAY='\033[0;37m'
WHITE='\033[1;37m'
NC='\033[0m' # No Color

# Sample messages
# echo -e "${GREEN}Success: Operation completed successfully!${NC}"
# echo -e "${YELLOW}Warning: Proceed with caution.${NC}"
# echo -e "${RED}Error: Something went wrong!${NC}"
# echo -e "${BLUE}Info: This is an informational message.${NC}"

# Display all colors
# echo -e "ALL COLORED TEXT"
# echo -e "${BLACK}The quick brown fox jumps over the lazy dog.${NC}"
# echo -e "${DARKGRAY}The quick brown fox jumps over the lazy dog.${NC}"
# echo -e "${RED}The quick brown fox jumps over the lazy dog.${NC}"
# echo -e "${LIGHTRED}The quick brown fox jumps over the lazy dog.${NC}"
# echo -e "${GREEN}The quick brown fox jumps over the lazy dog.${NC}"
# echo -e "${LIGHTGREEN}The quick brown fox jumps over the lazy dog.${NC}"
# echo -e "${ORANGE}The quick brown fox jumps over the lazy dog.${NC}"
# echo -e "${YELLOW}The quick brown fox jumps over the lazy dog.${NC}"
# echo -e "${BLUE}The quick brown fox jumps over the lazy dog.${NC}"
# echo -e "${LIGHTBLUE}The quick brown fox jumps over the lazy dog.${NC}"
# echo -e "${PURPLE}The quick brown fox jumps over the lazy dog.${NC}"
# echo -e "${LIGHTPURPLE}The quick brown fox jumps over the lazy dog.${NC}"
# echo -e "${CYAN}The quick brown fox jumps over the lazy dog.${NC}"
# echo -e "${LIGHTCYAN}The quick brown fox jumps over the lazy dog.${NC}"
# echo -e "${LIGHTGRAY}The quick brown fox jumps over the lazy dog.${NC}"
# echo -e "${WHITE}The quick brown fox jumps over the lazy dog.${NC}"



# echo -e "${BLACK}Rarely used. It's hard to read on most terminals. Sometimes used for "invisible" text (e.g., password placeholders).${NC}"
# echo -e "${DARKGRAY}Used for subtle messages, comments, muted logs. Often used in debug mode to not overwhelm the screen.${NC}"
# echo -e "${RED}❌ Errors — failed steps in CI/CD, missing files, permission denied, failed health checks.${NC}"
# echo -e "${LIGHTRED}🔥 Critical failures — unrecoverable errors, emergency alerts, breaking deployments.${NC}"
# echo -e "${GREEN}✅ Success — "Build successful", "Service started", passed tests, etc.${NC}"
# echo -e "${LIGHTGREEN}✅ Positive feedback — All tests passed, successful login, or user confirmations.${NC}"
# echo -e "${ORANGE}⚠️ Not standard. Some terminals map this to brown/yellow. Used for deprecation warnings or progress notices.${NC}"
# echo -e "${YELLOW}⚠️ Warnings — deprecated features, retry attempts, misconfigurations that aren’t fatal.${NC}"
# echo -e "${BLUE}ℹ️ Informational messages — "Connecting to DB...", "Fetching updates...", or version info.${NC}"
# echo -e "${LIGHTBLUE}ℹ️ Highlights in info logs — used to emphasize a specific part of an info message (like keys or service names).${NC}"
# echo -e "${PURPLE}💬 Interactive prompts, grouping logs by service/module, optional status (e.g., kubectl can use purple too).${NC}"
# echo -e "${LIGHTPURPLE}💬 Section titles, headers in long CLI output. Also for fancy prompts.${NC}"
# echo -e "${CYAN}🔄 Actions — "Starting service", "Creating DB", loading indicators, etc. Also used for showing commands.${NC}"
# echo -e "${LIGHTCYAN}🧭 User prompts — asking user input like "Enter your password:", or showing input fields.${NC}"
# echo -e "${LIGHTGRAY}📝 Footnotes, timestamps, non-essential metadata, or "quiet" logs.${NC}"
# echo -e "${WHITE}⚪ Default text — used for strong text or titles, typically bold or all-uppercase.${NC}"


#!/bin/bash

# Print Messages
echo -e "${BLACK}⛔ [BLACK] Hidden debug output (invisible on black background)                     [BLACK] ${NC}"
echo -e "${DARKGRAY}📁 [DARKGRAY] Cache directory already exists. Skipping creation.                [DARKGRAY] ${NC}"
echo -e "${RED}❌ [ERROR] Failed to connect to the PostgreSQL database.                             [RED] ${NC}"
echo -e "${LIGHTRED}🔥 [CRITICAL] Disk failure detected on /dev/sda. Immediate action required!     [LIGHTRED] ${NC}"
echo -e "${GREEN}✔️ [SUCCESS] Backup completed successfully at 03:21 AM.                            [GREEN] ${NC}"
echo -e "${LIGHTGREEN}✅ [OK] All containers are healthy and responsive.                            [LIGHTGREEN] ${NC}"
echo -e "${ORANGE}🟠 [NOTICE] Your config file will be deprecated in version 2.0.                   [ORANGE] ${NC}"
echo -e "${YELLOW}⚠️ [WARNING] SSL certificate expires in 3 days.                                   [YELLOW] ${NC}"
echo -e "${BLUE}ℹ️ [INFO] Starting NGINX server on port 80...                                       [BLUE] ${NC}"
echo -e "${LIGHTBLUE}🔹 [DETAIL] Using cached layer: node:18-alpine                                 [LIGHTBLUE] ${NC}"
echo -e "${PURPLE}📦 [MODULE] Running migrations for user-auth module...                            [PURPLE] ${NC}"
echo -e "${LIGHTPURPLE}🔷 [HEADER] === System Health Check ===                                      [LIGHTPURPLE] ${NC}"
echo -e "${CYAN}🔧 [ACTION] Creating a new user 'deploy_bot'...                                     [CYAN] ${NC}"
echo -e "${LIGHTCYAN}🔐 [PROMPT] Please enter your admin password to continue:                      [LIGHTCYAN] ${NC}"
echo -e "${LIGHTGRAY}🕒 [TIMESTAMP] 2025-06-19 16:22:01 | Service heartbeat received.               [LIGHTGRAY] ${NC}"
echo -e "${WHITE}📝 [LOG] Build #1432 started by Jenkins.                                           [WHITE] ${NC}"
