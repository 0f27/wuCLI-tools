# wuCLI-tools
Bunch of CLI tools and tricks which I use as non-IT-user, who forced to work with windows on machine without adm permissions.

### Assume that You:

- like CLI and hate mouse
- working in organisation which forced you to use windows instead of normal OS
- surrounded by shitty software
- have no admin rights and have no business justification to install something cool

### If you have adm rights and/or business justification

- you do not need the most of this tools, just install **cygwin**

### Some requirements:

- some tools required Perl to be installed (I'll explain how to)
- pwgen required Python to be installed (I'll explain how to)
- I also recommend you to put all tools to one folder and add path to this folder to %path% variable

### Some tricks to meet requirements:

- download strawberry perl:
```cmd
aria2c --http-proxy=<yourproxy:port> http://strawberryperl.com/download/5.24.0.1/strawberry-perl-5.24.0.1-32bit.msi
```

- then install it:

```cmd
install strawberry-perl-5.24.0.1-32bit.msi
REM or
msiexec /a strawberry-perl-5.24.0.1-32bit.msi /qb TARGETDIR=C:\perl
```

- to install Python3 just download and install Anaconda - it does not required adm rights and contains everithing you need in daily use


### Tool list: 
**appointmentadd**.bat - open outlook window - new appointment
**aria2c**.exe - https://aria2.github.io/, multiprotocol download utility, you can specify proxy settings
**calendar**.bat - open outlook calendar
**cat**.bat - just s alias for "type" command. Because I ALLWAYS type "cat" unstead of "type". Annoying
**contactadd**.bat - open outlook window - new contact
**contacts**.bat - open outlook contacts
**cp**.bat - just s alias for "xcopy" command. Because "cp" is more convinient
**groups**.bat - list groups of specified domain user, edit perl regexps to fit with your group format
**install**.bat - silently install .msi package without admin rights
**ls**.bat - "dir /b" as default, allowing additional "dir" arguments
**mails**.bat - parcer for email addresses copied from outlook
**md**.bat - "mkdir"
**md5**.exe - i do not remember where i downloaded it, but it returns md5sum 
**members**.bat - list users of specified domain group, uses my organization's format
**mv**.bat - "move"
**name**.bat - gathering full name from AD
**names**.bat - "name" in cycle - making fullname list from account name list
**outlook**.bat - just shortern full path to outlook. It is very convinient to use it with "/a" to add attachment
**pwgen**.bat - to run "pwgen.py"
**pwgen**.py - strong password generator
**qmsg**.bat - use it with META+R to create quick email
**uninstall**.bat - uninstall specified program via wmic
**unzip**.bat - unpack archive using 7z installed
**zip**.bat - create .7z archive via 7z program
