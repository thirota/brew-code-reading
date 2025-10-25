#!/bin/bash

HOGE=""
echo $HOGE

if [[ -z "${HOGE-}" ]]; then
  echo "HOGE is empty"
fi

if [[ -z "${HOGE:-}" ]]; then
  echo "HOGE is empty"
fi
