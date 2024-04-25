#!/usr/bin/bash

source ~/.profile

emacsclient -ce '(lambda () (interactive) previous-buffer)'
if [ $? -ne 0 ]; then
    emacs --daemon
    emacsclient -c
fi
