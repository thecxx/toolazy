#!/usr/bin/env bash

if [ -z "$TOOLAZY_PATH" ]; then
  exit 1
fi

PROJECT_PATH=$(dirname "$TOOLAZY_PATH")

function notice()
{
  echo "$1"
}

function error()
{
  notice "$1" && exit 1
}

function ask()
{
  if ! read -p "$1"; then
    exit 1
  else
    echo "$REPLY"
  fi
}