# display hostname
hostname

# display user
whoami

# get help for any command
command /?

# lookup DNS info
nslookup hostname.domain.com

# view IP info
ipconfig

# view path variable
echo %PATH%

# temporarily set an environment variable
set VARIABLE=string

# permanently set an environment variable
setx VARIABLE "string"

# find a filename with string in name
dir c:\path\to\folder\*string* /s /b

# determine who is logged into a remote computer
query user /server:hostname.domain.com

# remove network drive mapping
net use /DELETE \\hostname.domain.com\fileshare

# map network drive w/ credentials
net use \\hostname.domain.com\fileshare /u:domain\user password

# copy file w/ overwrite
copy \\path\to\oldfile.txt \\path\to\newfile.txt /Y
