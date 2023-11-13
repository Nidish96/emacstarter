#!/usr/bin/sh

emacsclient -c
if [ $? -ne 0 ]; then
    emacs --daemon
    emacsclient -c
fi
