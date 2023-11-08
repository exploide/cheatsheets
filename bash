# Parameter substitution
${var:-default} # use default value if $var is unset or empty

# Loops
while true; do date; sleep 1; done
for i in *.txt; do echo "$i"; done

# Do not store shell history
unset HISTFILE

# Get directory of current script
# resolves symlinks but not POSIX compliant because of readlink
script_dir="$(dirname "$(readlink -f -- "$0")")"

# Perform a simple TCP port scan
for p in {20..1000}; do timeout 1 bash -c "</dev/tcp/192.0.2.1/$p" &>/dev/null && echo $p/tcp open || echo $p/tcp closed; done
