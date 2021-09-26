for DOTFILE in `find /Users/$USER/.dotfiles/zsh/system`
do
  [ -f $DOTFILE ] && [[ $DOTFILE =~ .*\.zsh$ ]] &&  source $DOTFILE
done
