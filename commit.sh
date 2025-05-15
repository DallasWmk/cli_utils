#!/bin/bash

CHEWS=$(gum choose "feat" "fix" "refactor" "perf" "style" "test" "docs" "build" "ops" "chore")
SCOPE=$(gum input --placeholder "scope")

test -n "$SCOPE" && SCOPE="($SCOPE)"

SUMMARY=$(gum input --placeholder "summary of changes in commit")
DESC=$(gum input --placeholder "description")

gum confirm "Commit changes?" && git commit -m "$CHEWS$SCOPE:$SUMMARY" -m "$DESC"
