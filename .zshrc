# 256 Colors
 
# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
 
# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="christheme"
 
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
 
# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"
 
# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"
 
# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13
 
# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"
 
# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"
 
# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"
 
# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
function chpwd() {
emulate -L zsh
ls
}
 
function dl(){
curl -LOJ $*
}
 
function yt(){
mplayer -fs $(youtube-dl -g --cookies /tmp/cookie.txt "$*")
}
 
function lis(){
livestreamer $* best -p mplayer &
}
 
# Aliases
alias n='nautilus &'
alias r='ranger'
alias ll='ls -l'
alias la='ls -al'
alias s='sudo'
alias et='sudo rm -rf /tmp'
alias sw='sudo wget'
alias vim='/usr/local/bin/vim'
# Edit Config
alias zr='source ~/.zshrc'
alias ze='vim ~/.zshrc'
# Apt-get aliases
alias s='sudo'
alias ag='sudo apt-get'
alias agi='sudo apt-get install'
 
# Shutdown
alias shutdown='sudo shutdown now'
alias restart='sudo restart now'
alias sd='sudo shutdown now'
alias rs='sudo restart now'
 
# Git
alias gpom='git push origin master'
alias gpu='git pull origin master'
alias gd='git diff'
alias gs='git status'
alias gc='git commit -m'
alias ga='git add .'
 
plugins=(git npm ssh-agent taskwarrior themes)
 
source $ZSH/oh-my-zsh.sh
 
# Customize to your needs...
export JAVA_HOME=$(/usr/libexec/java_home -v 1.7) 
export JDK_HOME=$(/usr/libexec/java_home -v 1.7)
export JRE_HOME=$(/usr/libexec/java_home -v 1.7)
export PATH=${PATH}:/Users/cruor/.buildozer/android/platform/android-sdk-21/platform-tools
# Disable auto-correct
unsetopt correct_all

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH=/Users/cruor/.rvm/gems/ruby-1.9.3-p551-dev/bin:/Users/cruor/.rvm/gems/ruby-1.9.3-p551-dev@global/bin:/Users/cruor/.rvm/rubies/ruby-1.9.3-p551-dev/bin:/usr/local/heroku/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/texbin:/Users/cruor/.buildozer/android/platform/android-sdk-21/platform-tools:/Users/cruor/.rvm/bin:/Users/cruor/.buildozer/android/platform/android-sdk-21
