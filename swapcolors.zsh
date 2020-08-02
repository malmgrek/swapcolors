# Swap themes using templates
# 
# Installation
# ------------
#
# 1. Add the following line in your .zshrc: 'source "~/.zsh/swapcolors"'
# 2. Re-source .zshrc
# 3. Use by calling 'swapcolors "onedark"'
#
# NOTE: In Doom Emacs, you have to run (SPC h r r) and (SPC h r t)
#


TEMPLATES="$HOME/.zsh/swapcolors/templates"


swapcolors_alacritty() {
  base="$TEMPLATES/alacritty/base.yml"
  color="$TEMPLATES/alacritty/$1.yml"
  cat $base $color > "$HOME/.config/alacritty/alacritty.yml"
}


swapcolors_emacs() {
  color="$TEMPLATES/emacs/$1.el"
  cp $color "$HOME/.doom.d/color.el"
}


swapcolors_vim() {
  color="$TEMPLATES/vim/$1.vim"
  cp $color "$HOME/.vim/color.vim"
}


swapcolors() {
  swapcolors_alacritty $1
  swapcolors_emacs $1
  swapcolors_vim $1
}
