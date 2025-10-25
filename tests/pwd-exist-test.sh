#!/bin/bash
if ! [[ -d "${PWD}" ]]
then
  echo "Error: The current working directory must exist to run brew." >&2
  exit 1
fi

echo "${PWD} exists."

