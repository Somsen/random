
alias sb="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"
alias ij="open -a /Applications/IntelliJ\ IDEA\ 14\ CE.app"
alias ll="ls -lah"
alias fuck='eval $(thefuck $(fc -ln -1)); history -r'

# Cowsay with random cows and random messages (using fortune)
function cowsayfortune {
  NUMOFCOWS=`cowsay -l | tail -n +2 | wc -w`
  WHICHCOW=$((RANDOM%$NUMOFCOWS+1))
  THISCOW=`cowsay -l | tail -n +2 | sed -e 's/\ /\'$'\n/g' | sed $WHICHCOW'q;d'`
  
  fortune | cowsay -f $THISCOW -W 100
}
cowsayfortune

source $(brew --prefix)/etc/bash_completion.d/git-completion.bash
source $(brew --prefix)/etc/bash_completion.d/git-prompt.sh

# Change prompt
export MONKEY=🙈
function set_bash_prompt {
  if [[ $MONKEY = 🙉  ]]; then
	  MONKEY=🙈
  else
	  MONKEY=🙉
  fi
  PS1="\$MONKEY  [\[\033[0;34m\]\u:\[\033[01;34m\]\[\033[01;32m\]\w\[\033[01;34m\]\$(__git_ps1)\[\e[0m\]]\[\033[01;34m\] # \[\e[0m\]"
}


# Other change prompt
#export PS1="🐳  [\[\033[0;34m\]\u:\[\033[01;34m\]\[\033[01;32m\]\w\[\033[01;34m\]\[\e[0m\]]\[\033[01;34m\] # \[\e[0m\]"

PROMPT_COMMAND=set_bash_prompt
