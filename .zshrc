# Include plugins
plugins=(git)

##
## MY ALIASES
##

# dir - open file in file explorer app
alias dir="xdg-open ."

##
## MY COMMANDS
##

# newdir - makes a directory and enters it
function newdir() {
  if [[ -n "$1" ]] then
    mkdir $1
    cd $1
  else
    echo "error: please provide directory name"
  fi
}


##
## MY PROMPT
##

# Based off of Andy Fleming's oh-my-zsh theme (http://andyfleming.com)
function configure_prompt() {
  # dashed separator size
  function afmagic_dashes {
    # check either virtualenv or condaenv variables
    local python_env_dir="${VIRTUAL_ENV:-$CONDA_DEFAULT_ENV}"
    local python_env="${python_env_dir##*/}"

    # if there is a python virtual environment and it is displayed in
    # the prompt, account for it when returning the number of dashes
    if [[ -n "$python_env" && "$PS1" = *\(${python_env}\)* ]]; then
      echo $(( COLUMNS - ${#python_env} - 3 ))
    else
      echo $COLUMNS
    fi
  }

  setopt PROMPT_SUBST

  nooby_primary_colour=magenta
  nooby_secondary_colour=cyan
  nooby_tertiary_colour=blue

  autoload -U colors && colors

  # primary prompt: dashed separator, directory and vcs info
  PS1="${fg_bold[black]%}\${(l.\$(afmagic_dashes)..-.)}%{$reset_color%}
%{$fg_bold[$nooby_primary_colour]%}%~ %{$fg_bold[$nooby_secondary_colour]%}%(!.#.»)%{$reset_color%} "
  PS2="%{$fg[red]%}\ %{$reset_color%}"

  # right prompt: return code and user@host
  RPS1="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"
  RPS1+=" %{$fg_bold[black]%}%n@%m%{$reset_color%}"
}

# Configure custom prompt
configure_prompt

##
## SHELL SPICE!
##

# Syntax highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# Automatic suggestions
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

##
## SHELL STARTUP
##

# fastfetch <3
/usr/bin/fastfetch
