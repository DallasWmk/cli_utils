#!/bin/bash

APP=$(gum input --placeholder "app name")
CWD=$(pwd)
cd "$CWD" || exit 1
mkdir "$APP" || exit 1
cd "$APP" || exit 1
go mod init github.com/DallasWmk/"$APP"
git init
git branch -m main
mkdir "cmd" || exit 1
touch "cmd/main.go"

mkdir "internal"
mkdir "internal/$APP"
mkdir "internal/config"

mkdir "pkg"

touch "README.md"
