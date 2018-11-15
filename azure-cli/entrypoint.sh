#!/bin/sh

set -e

if [ -n "$AZURE_SCRIPT_PATH" ]
then
  SCRIPT_FILE="${GITHUB_WORKSPACE}/${AZURE_SCRIPT_PATH}"
  if [[ -e "$SCRIPT_FILE" ]]
  then
    chmod +x $SCRIPT_FILE
    $SCRIPT_FILE
  else
    echo "Script file ${SCRIPT_FILE} does not exists."
    exit 1
  fi
else
  $AZURE_SCRIPT
fi