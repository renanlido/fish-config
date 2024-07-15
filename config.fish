
if status is-interactive
# Commands to run in interactive sessions can go here
end

# This function will run when the shell starts
# Return Gretting message 
function fish_greeting
end


# rust
export PATH="$HOME/.cargo/bin:$PATH"

# Setting JAVA_HOME
set -l JAVA_BIN (dirname (realpath (which java)))
set -x JAVA_HOME (realpath "$JAVA_BIN"/../)

# Setting M2_HOME and adding it to the PATH
set -x M2_HOME "$HOME/apache-maven-3.9.5"
set -x PATH $M2_HOME/bin $PATH

set -x GOROOT /usr/local/go
set -x GOPATH $HOME/go
set -x PATH $GOPATH/bin:$GOROOT/bin:$PATH
set -x GOBIN $GOPATH/bin
set -x GO111MODULE on

set -x PNPM_HOME "/home/renanlido/.local/share/pnpm"
set -x PATH "$PNPM_HOME:$PATH"

set SPACEFISH_PROMPT_ADD_NEWLINE false

#PERSONAL ALIAS
alias cls='clear'
alias work='~/www'
alias monitor='htop'
alias cz-init='commitizen init cz-conventional-changelog --yarn --dev --exact'
alias drop-cache='echo 3 | sudo tee /proc/sys/vm/drop_caches'
# alias KUBE_EDITOR='code -w'

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH


starship init fish | source
# pnpm
set -gx PNPM_HOME "/home/renanlido/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end

# eval "(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
eval (/home/linuxbrew/.linuxbrew/bin/brew shellenv)
