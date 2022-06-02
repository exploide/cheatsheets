# Loops
while true; do date; sleep 1; done
for i in *.txt; do echo "$i"; done

# Get directory of current script
# resolves symlinks but not POSIX compliant because of readlink
script_dir="$(dirname "$(readlink -f -- "$0")")"
