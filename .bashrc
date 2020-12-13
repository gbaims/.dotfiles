# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# Load default rc file
. "$HOME/.shell/bashrc.d/.bashrc"

# Load all files from .shell/bashrc.d directory
if [ -d "$HOME/.shell/bashrc.d" ]; then
  for file in $HOME/.shell/bashrc.d/*.bash; do
    . "$file"
  done
fi

# Load all files from .shell/rc.d directory
if [ -d "$HOME/.shell/rc.d" ]; then
  for file in $HOME/.shell/rc.d/*.sh; do
    . "$file"
  done
fi
