for DOTFILE in `find ${HOME}/projects/src/playground/dotfiles/zsh/system`
do
  [ -f $DOTFILE ] && [[ $DOTFILE =~ .*\.zsh$ ]] &&  source $DOTFILE
done
