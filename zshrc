#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#
echo " __      __   _                    __  __   __   __                   ";
echo " \ \    / /__| |__ ___ _ __  ___  |  \/  |_ \ \ / /_ _ _ _ _ __  __ _ ";
echo "  \ \/\/ / -_) / _/ _ \ '  \/ -_) | |\/| | '_\ V / _\` | '_| '  \/ _\` |";
echo "   \_/\_/\___|_\__\___/_|_|_\___| |_|  |_|_|(_)_/\__,_|_| |_|_|_\__,_|";
echo "                                                                      ";

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
bindkey '^r' history-incremental-search-backward
export KEYTIMEOUT=1
bindkey -M vicmd v edit-command-line
