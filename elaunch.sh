#!/usr/bin/bash

source ~/.profile

# emacsclient -ce '(lambda () (interactive) previous-buffer)'
emacsclient -ce '(set-frame-size (selected-frame) 106 41)'
if [ $? -ne 0 ]; then
    emacs --daemon
    emacsclient -c
fi
