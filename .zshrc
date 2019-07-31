# Path to your oh-my-zsh installation.
export ZSH=/Users/henry/.oh-my-zsh

# Functions
uploadToDropbox() {
	filename="${1##*/}"
	cp $1 ~/Dropbox/$filename
}
copyFilePath() {
	file="$1"
	greadlink -f $file | pbcopy
}
trimCharacter() {
	echo ${1/%?/}
}
createAndCdDir() {
    mkdir $1
    cd $1
}

ngrokFunction() {
    /Applications/ngrok http $1 -auth="admin:b5pFX/4AyxYb5pFX/4AyxY"
}

# Aliases
alias lock='automator ~/Library/Services/Start\ Screen\ Saver.workflow &>/dev/null';
alias pass='password="$(openssl rand -base64 8)"; echo ${password/%?/} | pbcopy; echo Copied to clipboard!'
alias drop=uploadToDropbox;
alias clear='cd && clear;'
alias cfp=copyFilePath;
alias ngrok=ngrokFunction
alias school='cd ~/Documents/School/Semesters/Fall\ 2019'
alias mkdircd=createAndCdDir
alias lorem='echo "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum." | pbcopy'

# Git aliases
alias gapan='git add -N . && git add -p'
alias gr='gco -f'

# Run on init
sh ~/.vim/bundle/vim-solarized8/scripts/solarized8.sh
eval "$(rbenv init -)"

# Theme
ZSH_THEME="robbyrussell"

# Update frequency
export UPDATE_ZSH_DAYS=7

# Auto correction for commands
ENABLE_CORRECTION="true"

# Loading dots
COMPLETION_WAITING_DOTS="true"

# Plugins
plugins=(git)

# User variables
source $ZSH/oh-my-zsh.sh

# Path
export PATH=/Library/Frameworks/Python.framework/Versions/3.5/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:~/Execs:/opt/X11/bin:/Library/Frameworks/Mono.framework/Versions/Current/Commands:/usr/local/mysql/bin:/Users/henry/.cabal/bin:/Users/henry/.local/bin:/Users/henry/.vimpkg/bin
export PATH=${PATH}:/usr/local/mysql/bin
export PATH=${PATH}:/Users/henry/.cabal/bin
export PATH=${PATH}:~/.local/bin
export PATH=${PATH}:/Users/henry/Library/Python/3.5/bin
export PATH=${PATH}:/usr/local/opt/php@7.1/bin
export PATH=${PATH}:/usr/local/opt/php@7.1/sbin
export PATH="/usr/local/opt/php@7.1/bin:${PATH}"
export PATH="/usr/local/opt/php@7.1/sbin:${PATH}"
