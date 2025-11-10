
#
# ~/.bashrc
#


# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#Add my local bin to the path
export PATH=$PATH:/home/arun/.local/bin
export PATH=$PATH:~/go/bin 

#Set the default editor to nvim
export HACKATIME_API_KEY="7fda17be-aefa-4384-90ec-43d6d0d26a6a"
export HACKATIME_API_URL="https://hackatime.hackclub.com/api/hackatime/v1"

#source ~/emsdk/emsdk_env.sh
export WASI_SDK_PATH=$(pwd)/wasi-sdk-20.0

#Set aliases to make using some commands easier
alias ls='ls --almost-all --color=auto'
alias grep='grep --color=auto'
alias icat='kitty +kitten icat'
alias clear='clear && fastfetch'

#Simple functions same use as aliases but this time for using multicommands
conda-init(){
    . /opt/miniconda3/etc/profile.d/conda.sh
    export CRYPTOGRAPHY_OPENSSL_NO_LEGACY=1
}

#Set primary prompt string(its like in the terminal you see the username and stuff while typing well ya basically that for more information just search around the PS1 .bashrc or something)
PS1='[\u@\h \W]\$ '

#This basically exports locale to c which allows ensures consistent behavior across different systems, regardless of their default locale settings.
export LC_ALL="C"

#This basically allows the use of autojump package to move around directories easily
[[ -s /etc/profile.d/autojump.sh ]] && source /etc/profile.d/autojump.sh

#export icons for lf
export LF_ICONS="\
tw=:\
st=:\
ow=:\
dt=:\
di=:\
fi=:\
ln=:\
or=:\
ex=:\
*.c=:\
*.cc=:\
*.clj=:\
*.coffee=:\
*.cpp=:\
*.css=:\
*.d=:\
*.dart=:\
*.erl=:\
*.exs=:\
*.fs=:\
*.go=:\
*.h=:\
*.hh=:\
*.hpp=:\
*.hs=:\
*.html=:\
*.java=:\
*.jl=:\
*.js=:\
*.json=:\
*.lua=:\
*.md=:\
*.php=:\
*.pl=:\
*.pro=:\
*.py=:\
*.rb=:\
*.rs=:\
*.scala=:\
*.ts=:\
*.vim=:\
*.cmd=:\
*.ps1=:\
*.sh=:\
*.bash=:\
*.zsh=:\
*.fish=:\
*.tar=:\
*.tgz=:\
*.arc=:\
*.arj=:\
*.taz=:\
*.lha=:\
*.lz4=:\
*.lzh=:\
*.lzma=:\
*.tlz=:\
*.txz=:\
*.tzo=:\
*.t7z=:\
*.zip=:\
*.z=:\
*.dz=:\
*.gz=:\
*.lrz=:\
*.lz=:\
*.lzo=:\
*.xz=:\
*.zst=:\
*.tzst=:\
*.bz2=:\
*.bz=:\
*.tbz=:\
*.tbz2=:\
*.tz=:\
*.deb=:\
*.rpm=:\
*.jar=:\
*.war=:\
*.ear=:\
*.sar=:\
*.rar=:\
*.alz=:\
*.ace=:\
*.zoo=:\
*.cpio=:\
*.7z=:\
*.rz=:\
*.cab=:\
*.wim=:\
*.swm=:\
*.dwm=:\
*.esd=:\
*.jpg=:\
*.jpeg=:\
*.mjpg=:\
*.mjpeg=:\
*.gif=:\
*.bmp=:\
*.pbm=:\
*.pgm=:\
*.ppm=:\
*.tga=:\
*.xbm=:\
*.xpm=:\
*.tif=:\
*.tiff=:\
*.png=:\
*.svg=:\
*.svgz=:\
*.mng=:\
*.pcx=:\
*.mov=:\
*.mpg=:\
*.mpeg=:\
*.m2v=:\
*.mkv=:\
*.webm=:\
*.ogm=:\
*.mp4=:\
*.m4v=:\
*.mp4v=:\
*.vob=:\
*.qt=:\
*.nuv=:\
*.wmv=:\
*.asf=:\
*.rm=:\
*.rmvb=:\
*.flc=:\
*.avi=:\
*.fli=:\
*.flv=:\
*.gl=:\
*.dl=:\
*.xcf=:\
*.xwd=:\
*.yuv=:\
*.cgm=:\
*.emf=:\
*.ogv=:\
*.ogx=:\
*.aac=:\
*.au=:\
*.flac=:\
*.m4a=:\
*.mid=:\
*.midi=:\
*.mka=:\
*.mp3=:\
*.mpc=:\
*.ogg=:\
*.ra=:\
*.wav=:\
*.oga=:\
*.opus=:\
*.spx=:\
*.xspf=:\
*.pdf=:\
*.nix=:\
"

#Commands to run when bash starts
fastfetch
export ANDROID_HOME=$HOME/android-sdk
export ANDROID_SDK_ROOT=$ANDROID_HOME
export PATH=$ANDROID_HOME/cmdline-tools/latest/bin:$ANDROID_HOME/platform-tools:$ANDROID_HOME/emulator:$PATH
export PATH="/home/arun/.local/bin:/home/arun/android-sdk/cmdline-tools/latest/bin:/home/arun/android-sdk/platform-tools:/home/arun/android-sdk/emulator:/home/arun/.nix-profile/bin:/nix/var/nix/profiles/default/bin:/sbin:/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/usr/lib/jvm/default/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/var/lib/snapd/snap/bin:/home/arun/.local/bin:/home/arun/go/bin:/home/arun/.cargo/bin"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export LC_ALL=en_US.UTF-8
