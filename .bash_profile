
#Personnalisation du prompt

#Couleurs
BLACK="\[\033[0;30m\]"      # black
RED="\[\033[0;31m\]"        # red
GREEN="\[\033[0;32m\]"      # green
YELLOW="\[\033[0;33m\]"     # yellow
BLUE="\[\033[0;34m\]"       # blue
MAGENTA="\[\033[0;35m\]"    # magenta
CYAN="\[\033[0;36m\]"       # cyan
LIGHT_GREY="\[\033[0;37m\]" # light grey
DARK_GREY="\[\033[1;30m\]"  # dark grey
WHITE="\[\033[1;37m\]"      # white
COLOR_OFF="\[\033[0m\]"     # off


                                     
function prompt_return_code_if_error {
  local RET=$?
  if [ $RET -ne  0 ]
  then 
	  echo 'O__O'
  fi

}


function prompt_current_directory {
    if [ $HOME = `pwd` ]
    then
	 echo '~BRUH'
    else
	 basename `pwd`
    fi
}

alias agu='sudo apt-get update'
alias agg='sudo apt-get upgrade'
alias MAJ='agu && agg'

PS1="$CYAN\$(date +%H:%M)$YELLOW\$(prompt_current_directory)$RED\$(prompt_return_code_if_error)$COLOR_OFF\$"


