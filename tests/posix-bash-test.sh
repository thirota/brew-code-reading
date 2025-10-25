#!/bin/bash


# POSIX OFF ==> bash
#set +o posix
#echo "POSIX mode is off"

# POSIX ON ==> sh
# Actually, we cannot turn on POSIX in macOS?
set -o posix
[[ -n "hello" ]] && echo "ok"



