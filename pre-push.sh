#! /bin/bash

read -p "Are you ready to push to remote repo? [Y|n]" -n 1 -r < /dev/tty

# new line
echo
if echo $REPLY | grep '^[Nn]$' > /dev/null
then
  echo "abortion, push failed"
  exit 1
fi

## code linter here

if [[ $? != 0 ]]
then
  echo "Linter failed"
  exit 1
else
  echo "ready to push"
  exit 0
fi
