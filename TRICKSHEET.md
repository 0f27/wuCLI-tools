# Tips & tricks to use in daily work

### installing unix envirenment and dataanalisis utils to your smartphone:

- install termux app
- execute there:
```bash
apt update && apt -y upgrade
apt install -y clang fftw libxml2-dev libzmq libzmq-dev freetype freetype-dev libxslt-dev libpng libpng-dev openssh python python-dev aria2 nodejs git gawk jq tmux fish man perl python2 rsync pkg-config
npm install -g xml2json-command
LDFLAGS=" -lm -lcompiler_rt" pip install numpy pandas csvkit lxml matplotlib jupyter
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

- https://cygwin.com/
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

### how to send multiple files to different senders via ms outlook

```bash
for i in *.pdf; do /cygdrive/c/Program\ Files\ \(x86\)/Microsoft\ Office/Office16/OUTLOOK.EXE /c ipm.note /a $i /m $(some-kind-of-function-to-parce-filename-to-email-address)
```

### Really cool and lightweight pdf/epub/mobi reader

- https://www.sumatrapdfreader.org/download-free-pdf-viewer.html

### scanning network for avaliable ip addresses

```bash
for i in {2..254}; do ping "192.168.0.$i" -c 1; done >> hosts.up
cat hosts.up | grep ' 0% ' -B 2 | awk -F' ' '/192/ {print $2}'
```

the same idea for windows

by the way it is better to use nmap

### vi / vim for dummies

open/save/close

- :o file.txt
- :w
- :q

undo/redo

- u
- Ctrl+r

select

- v

cut/copy/paste

- d
- y
- p

cut whole string / copy whole string

- dd
- yy

arrows left/down/up/right

- h
- j
- k
- l

search and go to

- /something

replace

in file
- :%s/what/to/g
in row
- :s/what/to/g

tiling (vim)

- Ctrl+w, s
- Ctrl+w, v
- Ctrl+w, [hjkl]
- Ctrl+w, q

### get rid of dublicate lines

```bash
< file awk '!(count[$0]++)'
```
or
```bash
< file sort | uniq
```

