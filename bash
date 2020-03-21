# Loops
while true; do date; sleep 1; done
for i in *.txt; do echo "$i"; done

# Get directory of current script
SCRIPT_DIR="$(dirname "$(readlink -f "$0")")"
