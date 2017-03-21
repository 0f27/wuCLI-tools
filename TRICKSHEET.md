# Tips & tricks to use in daily work

### installing unix envirenment and dataanalisis utils to your smartphone:

- install termux app
- execute there:
```bash
apt update; apt -y upgrade; apt install -y openssh python git python-dev clang fftw aria2 nodejs gawk jq tmux fish man perl rsync; npm install -g xml2json-command; LDFLAGS=" -lm -lcompiler_rt" pip install numpy pandas csvkit
```
### how to install cygwin without adm rights

- download it from official site: https://cygwin.com

- then:

```cmd
cd %userprofile%\Downloads
setup*.exe -B
```
### how to download site recursively

```bash
wget -rkp -l3 -np -nH --cut-dirs=1 http://yoursite
```

### how to change cmd codepage to utf-8

```cmd
chcp 65001
```

### how to quickly install anaconda in linux envirenment

```bash
wget https://repo.continuum.io/archive/Anaconda2-4.3.0-Linux-x86_64.sh
bash Anaconda2-4.3.0-Linux-x86_64.sh -b -p $HOME/anaconda2
export PATH="$HOME/anaconda2/bin:$PATH"
echo export PATH="$HOME/anaconda2/bin:$PATH" >> .bashrc
```


### portable unix utilities and analogs for windiows:

- https://sourceforge.net/projects/unxutils/
- https://github.com/sheabunge/GitPortable/tree/master/GitPortable
- ftp://ftp.vim.org/pub/vim/pc/vim80-069w32.zip
- https://the.earth.li/~sgtatham/putty/latest/x86/pscp.exe
- https://the.earth.li/~sgtatham/putty/latest/x86/putty.exe
- https://github.com/aria2/aria2/releases/download/release-1.30.0/aria2-1.30.0-win-32bit-build1.zip

### install .msi pachage without admin rights:

- 
msiexec /a downloadedpackage.msi /qb TARGETDIR=C:\somewhere

### gathering local admin rights if console opened under adm rights

```cmd
net user Administrator mynewpass
cls
```

### Really cool and lightweight pdf/epub/mobi reader

- https://www.sumatrapdfreader.org/download-free-pdf-viewer.html

### if you have no nmap

```bash
for i in {2..254}; do ping "192.168.0.$i" -c 1; done >> hosts.up
cat hosts.up | grep ' 0% ' -B 2 | awk -F' ' '/192/ {print $2}'
```

the same idea for windows

