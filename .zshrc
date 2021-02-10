# Path to your oh-my-zsh installation.
export ZSH=/Users/henry/.oh-my-zsh

# Run on init
sh ~/.vim/bundle/vim-solarized8/scripts/solarized8.sh
eval "$(rbenv init -)"

# Theme
ZSH_THEME="avit"

# Update frequency
export UPDATE_ZSH_DAYS=7

# Auto correction for commands
ENABLE_CORRECTION="true"

# Loading dots
COMPLETION_WAITING_DOTS="true"

# Plugins
plugins=(git)

# Path
export PATH=${PATH}:""

# Functions
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

csFunc() {
  cd $1 && ls
}

# Aliases
alias lock='automator ~/Library/Services/Start\ Screen\ Saver.workflow &>/dev/null';
alias pass='password="$(openssl rand -base64 8)"; echo ${password/%?/} | pbcopy; echo Copied to clipboard!'
alias wipe='cd && clear;'
alias cfp=copyFilePath;
alias ngrok=ngrokFunction
alias mkdircd=createAndCdDir
alias lorem='echo "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum." | pbcopy'
alias cs=csFunc
alias v='vim ${@:2}'
alias trash='rmtrash'
alias rm='echo Use \`trash\`, or the full path i.e. \`/bin/rm\`'
alias unsus='xattr -dr com.apple.quarantine'

# Git aliases
alias gapan='git add -N . && git add -p'
alias gr='gco -f'
alias gcamend='git commit --amend'
alias gpgerrit='git push origin HEAD:refs/for/develop'

source $ZSH/oh-my-zsh.sh
source /Users/henry/.zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
