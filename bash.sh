# common *nix tools
man
pwd
cd
ls
dir
cp
mv
rm
mkdir
du
cat
head
tail
less
more
diff
file
find
locate
chmod / setfacl
ln
echo
grep
sort
history
fdisk
parted
mkfs
mount
umount
blkid
lsblk
ps
pidof
journalctl
udevd
udevadmm
nohup
kill
pkill
ping
users
groups
realm
curl
wget
gpg
md5sum
sha256sum
gzip
gunzip
tar
dpkg
ip
ifconfig
apt / snap / yum / dnf
vi / vim / nano / pico
clear
reset
exit

# recursively move files from one directory to another
mv /path/to/folder/* /newpath/to/folder/

# recursively search folders in directory for text string
grep -rnwl '/path/to/folder' -e 'text_to_search_for'

# pipe grep results into less
grep eigh /usr/share/dict/words | less

# recursively search files in directory by name with wildcard
find /path/to/folder -name "*filename*" -print

# list all block devices
ls /dev -l | grep '^b'

# list kernel messages
journalctl -k

# create a filesystem (only on newly created partitions)
mkfs -t ext4 /dev/[device name]

# mount a filesystem
mount -t [type] /dev/[device name] /path/to/mountpoint

# remount in read-write mode
mount -n -o remount /path/to/mountpoint

# monitor uevents (kernel notifications sent to udevd)
udevadm monitor

# get fingerprint from key
gpg --show-keys key.asc

# dd iso to bootable USB
dd if=/home/user/Downloads/boot.iso of=/dev/sdaX bs=4096 status=progress

# cat lines matching text
cat ./path/to/file | grep text-string

# List dependencies filtered to string
ldd /path/to/executable | grep string-to-search

# list all active processes, sorted by command name
ps -e --sort cmd

# other ps options
ps x	# show all of your running processes
ps ax	# show all processes, not just ones you own
ps u	# include more detailed info on processes
ps w	# show full command names

# run a process that stays up after log out
nohup command

# freeze and continue a process instead of killing it
kill -STOP pid
kill -CONT pid

# list sudo logs
journalctl SYSLOG_IDENTIFIER=sudo

# find what uses the most disk space
du / | sort -n | tail

# # DANGEROUS COMMAND - remove folder recursively
# rm -r folderName

# create symbolic link
ln -s target linkname

# configure history command to display timestamps
echo 'export HISTTIMEFORMAT="%d/%m/%y %T "' >> ~/.bash_profile
source ~/.bash_profile

# configure history command to store more commands
export HISTSIZE=100000
export HISTFILESIZE=999999

# see recent logs for user logins
tail -f /var/log/secure

# current epoch time in milliseconds
date +%s%N | cut -b1-13

# write standard output and standard error to two files
command > stdout 2> stderr

# write standard output and standard error to same file
command > output 2>&1

# compress multiple files into an archive (then extract
tar cvf archive.tar file1 file2 file3
tar xvf archive.tar

# append text to a file
echo example_text >> filename
