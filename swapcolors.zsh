# Swap themes using templates


TEMPLATES="$HOME/.zsh/swapcolors/templates"


configure_alacritty() {
  base="$TEMPLATES/alacritty/base.yml"
  color="$TEMPLATES/alacritty/$1.yml"
  cat $base $color > "$HOME/.config/alacritty/alacritty.yml"
}


configure_emacs() {
  color="$TEMPLATES/emacs/$1.el"
  cp $color "$HOME/.doom.d/color.el"
}


configure_vim() {
  color="$TEMPLATES/vim/$1.vim"
  cp $color "$HOME/.vim/color.vim"
}


swapcolors() {
  configure_alacritty $1
  configure_emacs $1
  configure_vim $1
}
