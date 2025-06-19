#!/bin/bash

# Directory to scan (default to current directory)
SCAN_DIR="${1:-.}"

echo "🔍 Scanning directory: $SCAN_DIR"
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
    # "exec("
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
echo "🔎 Searching for suspicious patterns in PHP files..."

for pattern in "${SUSPICIOUS_PATTERNS[@]}"; do
    echo "  ➤ Pattern: $pattern"
    grep -rni --include="*.php" --exclude-dir={.git,node_modules,vendor} "$pattern" "$SCAN_DIR" >> "$RESULT_FILE"
done

# Report
if [[ -s "$RESULT_FILE" ]]; then
    echo ""
    echo "🚩 Suspicious matches found:"
    sort "$RESULT_FILE" | uniq
    echo ""
    echo "🧨 Please review the above files manually."
else
    echo "✅ No suspicious patterns found."
fi

# Cleanup (optional)
# rm -f "$RESULT_FILE"
