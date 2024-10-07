export GIT_DUET_CO_AUTHORED_BY=1
export PATH="/opt/homebrew/opt/node@18/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/node@18/lib"
export CPPFLAGS="-I/opt/homebrew/opt/node@18/include"
alias awsstatus="aws sts get-caller-identity"
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
export PATH="/opt/homebrew/opt/openjdk@17/bin:$PATH"

source ~/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# Simple Aliases
alias pe="echo \$ENVIRONMENT"
alias pa="echo \$AWS_PROFILE"
alias ti='terraform init -input=false -reconfigure -backend-config="./config/$ENVIRONMENT.conf"'
alias tp='terraform plan -var-file="config/$ENVIRONMENT.tfvars"'
# alias zsh="vim ~/.zshrc"


# Parameter Aliases

# Git shortcuts
ga() {
  git add .
}

gc() {
  git commit -m $1
}

gp() {
  git push
}

gl() {
  git log
}

gf() {
  git commit --fixup $(git rev-parse HEAD)
}

gr() {
  git reset --soft HEAD~1
}

# Get lines from file
cg() {
  $2 $1
}

# Get lines from /.aws/config file
cga() {
  grep $1 ~/.aws/config
}

# Export Environment
ee() {
  local env=""
  if [[ $1 == "i" ]]
  then
    env="infratest"
  elif [[ $1 == "s" ]]
  then
    env="sandbox"
  elif [[ $1 == "t" ]]
  then
    env="test"
  elif [[ $1 == "sit" ]]
  then
    env="sit"
  elif [[ $1 == "d" ]]
  then
    env="dev"
  fi
  export ENVIRONMENT=$env
}

ea() {
  local role=""
  if [[ $1 == "dev" ]]
  then
    role="placeholder-AWS-role-1"
  elif [[ $1 == "dr" ]]
  then
    role="placeholder-AWS-role-2"
  fi
  export AWS_PROFILE=$role
}

as() {
  aws sso login
}

asts() {
  aws sts get-caller-identity
}

#exa() {
#  local role=""
#  if [[ $1 == "dev" ]]
#  then
#    r

