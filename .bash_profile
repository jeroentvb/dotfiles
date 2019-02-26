# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH

#source ~/.bashrc

# export PS1="\u@ \w $ "
# Prompt customization
export PS1="⛷  \w $ "

# cowsay -f eyes "Hello there!"

# Get the weather for amsterdam. This request does take a while and blocks the command line. So I commented it.
#curl wttr.in/amsterdam?0 &

# cd shortcuts
school=~/stack/school
alias school="cd $school"

codep=~/stack/code-projects
alias codep="cd $codep"

alias la="ls -a"
alias root="cd ~"

# Git
alias gs="git status"
alias ga="git add ."
alias gc="git commit -m"
alias gp="git push"
alias gb="git branch"
alias gcheck="git checkout"

new-site () {
  mkdir $1
  cd $1
  echo "<!DOCTYPE html>
  <html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" type="text/css" href="css/styles.css">
    <title>Document</title>
  </head>
  <body>

    <script src="js/script.js"></script>
  </body>
  </html>" > index.html
  mkdir css
  cd css
  touch styles.css
  cd ..
  mkdir js
  cd js
  touch script.js
  cd ..
}

# Initialize Z by Rupa
. ~/.bash-scripts/z.sh


# Credits https://github.com/barryclark/bashstrap/blob/master/.bash_profile

# Quick navigation
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
