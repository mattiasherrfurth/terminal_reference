rem ### display hostname
hostname

rem ### display user
whoami

rem ### get help for any command
command /?

rem ### lookup DNS info
nslookup hostname.domain.com

rem ### view IP info
ipconfig

rem ### view path variable
echo %PATH%

rem ### temporarily set an environment variable
set VARIABLE=string

rem ### permanently set an environment variable
setx VARIABLE "string"

rem ### find a filename with string in name
dir c:\path\to\folder\*string* /s /b

rem ### determine who is logged into a remote computer
query user /server:hostname.domain.com

rem ### remove network drive mapping
net use /DELETE \\hostname.domain.com\fileshare

rem ### map network drive w/ credentials
net use \\hostname.domain.com\fileshare /u:domain\user password

rem ### copy file w/ overwrite
copy \\path\to\oldfile.txt \\path\to\newfile.txt /Y
