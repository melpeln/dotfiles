#!/bin/bash

echo 'copying .tmux.conf to ~'
cp .tmux.conf ~/
echo 'copying .vimrc to ~'
cp .vimrc ~/

source ~/.vimrc
source ~/.tmux.conf
