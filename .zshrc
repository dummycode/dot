# Path to your oh-my-zsh installation.
export ZSH=/Users/henry/.oh-my-zsh

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

ngrokFunction() {
    /Applications/ngrok http $1 -auth="admin:b5pFX/4AyxYb5pFX/4AyxY"
}

# Aliases
alias lock='automator ~/Library/Services/Start\ Screen\ Saver.workflow &>/dev/null';
alias pass='password="$(openssl rand -base64 8)"; echo ${password/%?/} | pbcopy; echo Copied to clipboard!'
alias wipe='cd && clear;'
alias drop=uploadToDropbox;
>>>>>>> 8e9e9a7e3e939e7c4478c8e4a1f98daa48a43c15
alias cfp=copyFilePath;
alias ngrok=ngrokFunction
alias school='cd ~/Documents/School/Semesters/spring_2020'
alias mkdircd=createAndCdDir
alias lorem='echo "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum." | pbcopy'
alias dockerit='~/Documents/School/Semesters/Fall\ 2019/TA/Docker/cs2110docker.sh -it'
alias cs=csFunc
alias v='vim ${@:2}'
alias trash='rmtrash'
alias rm='echo Use \`trash\`, or the full path i.e. \`/bin/rm\`'
alias vu="cd ~/ubuntu && vagrant up"
alias vs="cd ~/ubuntu && vagrant ssh"
alias vh="cd ~/ubuntu && vagrant halt"

# Git aliases
alias gapan='git add -N . && git add -p'
alias gr='gco -f'

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

# User variables
source $ZSH/oh-my-zsh.sh

# Path
export PATH=${PATH}:""

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh
# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.zsh
source /Users/henry/.zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

