# .bash_profile

# User specific aliases and functions
if [ -d ~/.bash_profile.d ]; then
  for file in ~/.bash_profile.d/*; do
    if [ -f "$file" ]; then
      . "$file"
    fi
  done
fi
unset file

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi
