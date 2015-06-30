#!/usr/bin/env bash
cp -v .bashrc ~
cp -v .vimrc ~
cp -v .git-prompt.sh ~
cp -v .tmux.conf ~
.  ~/.bashrc
echo "Sourced .bashrc"
