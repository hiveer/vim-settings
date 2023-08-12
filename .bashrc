cd works/

source ~/.git-prompt.sh
. ~/iterm2-tab-color/functions.sh

declare -a ARRAYISO=( FF1493 228B22 00BFFF 8FBC8F DAA520 F08080 20B2AA BA55D3 9ACD32)
it2-tab-color ${ARRAYISO["$[RANDOM % ${#ARRAYISO[@]}]"]}

# basic
alias e="vim"
alias ll="ls -al"
alias be="bundle exec"
alias ctags="/usr/local/bin/ctags"

# for git
alias gm="git merge"
alias gd="git diff"
alias gs="git status"
alias gw="git show"
alias gb="git branch"
alias gck="git checkout"
alias gc="git commit"
alias gca="git commit -a"
alias gcm="git commit -m"
alias gcv="git commit -v"
alias ga="git add"
alias gps="git push"
alias gpso="git push origin"
alias gpsu="git push origin -u"
alias gpl="git pull"
alias gplo="git pull origin"
alias gf="git fetch"
alias gl="git log"
alias glol="git log --pretty=oneline"
alias glgh="git log --graph"
alias glns="git log --name-status"
alias glp="git log --pretty=format:\"%h: %cr - %an - %s\""
alias gsh="git stash"
alias gv="git revert"
alias gr="git remote -v"
alias rfdb="be rake db:drop && be rake db:create && be rake db:migrate"

# checkout recent branches
alias recent_branches="git for-each-ref --sort='-authordate:iso8601' --format='%(refname:short)' --count 10  refs/heads"
alias first_recent_branch="git for-each-ref --sort='-authordate:iso8601' --format='%(refname:short)' --count 1  refs/heads"

# proxy
alias goproxy='export http_proxy=http://127.0.0.1:8087 https_proxy=http://127.0.0.1:8087'
alias disproxy='unset http_proxy https_proxy'

# rspec
alias ctest='SIMPLECOV=1 bundle exec rspec'
alias btest='WEBDRIVER_HEADLESS=0 bundle exec rspec'
alias etest='bundle exec rspec spec/end_to_end/*_spec.rb'
alias ucompare='bundle exec undercover --compare'

# run middleman
alias cmiddleman='NO_CONTRACTS=true bundle exec middleman'

function recent() {
  # recent_brs=($(recent_branches))
  read -a arr <<< $(recent_branches)

  for ((i = 0; i < ${#arr[@]}; ++i)); do
      # bash arrays are 0-indexed
      # position=$(($i))
      position=$(($i))
      echo "$position ${arr[$i]}"
  done
}

function gckp() {
  arr=($(recent_branches))
  git checkout ${arr[$@]}
}

# format bash title
export PS1='\[\e[32m\]\u\e[0m@\[\e[35m\]\w\[\e[34m\]$(__git_ps1 " (%s)")\e[0m$ '

# set 'ls' color
export CLICOLOR=1

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Added by GDK bootstrap
source /Users/hiveerli/.asdf/asdf.sh
