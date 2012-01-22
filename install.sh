#!/bin/sh
# Install dotfiles as symlinks to this repo.

BASEDIR=$(readlink -m `dirname $0`)

for file in muttrc vimrc xsession zshrc XCompose Xmodmap Xresources; do
  test -f ~/.$file || ln -s $BASEDIR/$file ~/.$file
done

test -d ~/.config/awesome        || mkdir -p ~/.config/awesome
test -f ~/.config/awesome/rc.lua || ln -s $BASEDIR/awesome.lua ~/.config/awesome/rc.lua
