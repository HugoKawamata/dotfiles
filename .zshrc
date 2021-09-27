# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/hugokawamata/.oh-my-zsh"

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"
#
# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

alias gco='git checkout'
alias gcm='git commit -m'
alias grsh='git reset --soft HEAD~1'
alias gs="git status"
alias gd="git difftool"
alias grh!="git reset --hard"
alias grh!!="git add . && git reset --hard"
alias gpu="git push -u origin $(git branch --show-current)"
alias gjp="~/.useful_scripts/just_push.sh"
alias gmmaster="~/.useful_scripts/checkout_pull_and_merge.sh master"
alias gmm="~/.useful_scripts/checkout_pull_and_merge.sh"
alias undo-commit="git reset --soft HEAD~1"
alias gchain='~/.useful_scripts/merge_chain.sh'

# Use instead of `git` when committing to the dotfiles repo
alias gitdot="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"

alias vim-zshrc="vim ~/.zshrc"
alias zsh-refresh="source ~/.zshrc"
alias reload-zsh="source ~/.zshrc"

alias jssh='ssh -i "~/.ssh/holistic-node-server.pem" ubuntu@ec2-52-63-127-15.ap-southeast-2.compute.amazonaws.com'
alias issei-s='cd ~/repos/holistic-server'
alias issei-a='cd ~/repos/holistic-japanese'

alias build-apk='cd android && ./gradlew assembleRelease && cd ..'
alias rake='noglob rake'

alias tanda-ssh='ssh ruby@3.105.118.174'
alias tanda-sync='cd ~/TandaRepos/payaus && ./useful_scripts/dev-server/sync-aws.sh 3.105.118.174'
alias tanda-prod='~/TandaRepos/tanda-infrastructure/helpers/tanda-ssh-env.sh'
alias dios='NODE_ENV=development yarn react-native run-ios --no-packager --scheme Employee.Debug --simulator "iPhone 8"'
alias logadb='adb logcat \*:S ReactNative:V ReactNativeJS:V'
alias dand='NODE_ENV=development yarn react-native run-android --no-packager --variant productionDebug --appIdSuffix debug'
alias dstart='CIRCLE_BRANCH="master" CIRCLE_SHA1=b1c2d2a3 NODE_ENV=development yarn react-native start'
alias dbug='curl "http://localhost:8081/index.ios.bundle?platform=ios&dev=true&minify=false&hot=true" > /dev/null'
alias emp='cd ~/TandaRepos/employee'
alias pay='cd ~/TandaRepos/payaus'
alias tc='cd ~/TandaRepos/project-nightshift'
alias lintmebaby='yarn eslint tools --fix && yarn eslint src/components --fix && yarn eslint src/{apollo,i18n,images,modals,navigation,partials,screens,store,types,util} --fix'
alias yap='yarn && cd ios && pod install && cd ..'
alias adnat-ctrl='~/TandaRepos/tanda-infrastructure/adnat-ctrl/adnat-ctrl'

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
export ANDROID_HOME="$HOME/Library/Android/sdk"
export PATH="$PATH:$ANDROID_HOME/platform-tools"
export NVM_DIR=~/.nvm

source $(brew --prefix nvm)/nvm.sh
export PATH="/usr/local/opt/postgresql@9.6/bin:$PATH"
export PATH="/usr/local/opt/openssl@1.0/bin:$PATH"

[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PATH="/Users/hugokawamata/.rvm/environments/ruby-2.7.3:$PATH"
