#!/bin/bash

# Directory to scan (default to current directory)
SCAN_DIR="${1:-.}"

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

echo -e "🔍 ${LIGHTBLUE} Scanning directory: ${YELLOW} $SCAN_DIR ${NC}"
echo ""

# Patterns commonly used in obfuscated or malicious PHP
SUSPICIOUS_PATTERNS=(
    # "eval("
    # "base64_decode("
    # "gzinflate("
    # "str_rot13("
    # "strrev("
    # "assert("
    # "preg_replace(.*\/e.*)"
    # "shell_exec("
    "exec("
    # "passthru("
    # "system("
    # "chr("
    # "create_function("
    "allow_url_include"
)

# Temporary file to hold results
RESULT_FILE="/tmp/suspicious_php_files.txt"
> "$RESULT_FILE"

# Scan PHP files for suspicious patterns
echo -e "🔎 ${BLUE} Searching for suspicious patterns in PHP files... ${NC}"

for pattern in "${SUSPICIOUS_PATTERNS[@]}"; do
    echo -e "${LIGHTPURPLE}  ➤ Pattern: ${PURPLE} $pattern"
    grep -rni --include="*.php" --exclude-dir={.git,node_modules,vendor} "$pattern" "$SCAN_DIR" >> "$RESULT_FILE"
done

# Report
if [[ -s "$RESULT_FILE" ]]; then
    echo ""
    echo -e "🚩 ${RED} Suspicious matches found: ${NC}"
    sort "$RESULT_FILE" | uniq
    echo ""
    echo -e "🧨 ${PURPLE}Please review the above files manually."
else
    echo -e "✅ ${GREEN}No suspicious patterns found."
fi

# Cleanup (optional)
# rm -f "$RESULT_FILE"

# Command to run
# sudo ./mal_der.sh				---> for current directory where the file is
# sudo ./mal_det.sh /path/to/scan		---> to scan a specific directory
