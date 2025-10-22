#!/bin/bash
set -u

#echo "$UNDEFINED"
echo "${UNDEFINED:-}"
echo "${UNDEFINED:-hoge}"

