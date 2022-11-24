alias ghci=ghci-color
alias pip=pip3
export PROMPT='$ '
export RPROMPT='[%~]'

autoload -U compinit promptinit
compinit
promptinit


# Setting PATH for Python 2.7

PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

# Setting PATH for Python 3.9

PATH="/Library/Frameworks/Python.framework/Versions/3.9/bin:${PATH}"

export PATH


VIRTUALENVWRAPPER_PYTHON=/Library/Frameworks/Python.framework/Versions/3.9/bin/python3
export WORKON_HOME=$HOME/.virtualenvs   # Optional
export PROJECT_HOME=$HOME/PythonProjects      # Optional
source /Library/Frameworks/Python.framework/Versions/3.9/bin/virtualenvwrapper.sh

#[ -f "/Users/pavel/.ghcup/env" ] && source "/Users/pavel/.ghcup/env" # ghcup-env
[ -f "/Users/pavel/.ghcup/env" ] && source "/Users/pavel/.ghcup/env" # ghcup-env
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


