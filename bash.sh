# common tools
man
sudo
pwd
cd
ls
dir
cp
mv
rm
mkdir
cat
diff
file
chmod
echo
grep
history
ps
pidof
kill
pkill
ping
curl
wget
dpkg
ip
ifconfig
apt / snap / yum / dnf
vi / vim / nano / pico
clear
reset
exit

# recursively search folders in directory for text string
sudo grep -rnwl '/path/to/folder' -e 'text_to_search_for'

# recursively search files in directory	by name with wildcard 
sudo find /path/to/folder -name	"*filename*"

# List dependencies filtered to string
ldd /path/to/executable | grep string-to-search

# list all active processes, sorted by command name
ps -e --sort cmd

# remove folder recursively
rm -r folderName

# configure history command to display timestamps
echo 'export HISTTIMEFORMAT="%d/%m/%y %T "' >> ~/.bash_profile
source ~/.bash_profile

# configure history command to store more commands
export HISTSIZE=100000
export HISTFILESIZE=999999
