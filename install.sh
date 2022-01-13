#!/bin/bash

# Try to install on the argument folder.
if [ "$#" == "1" ]; then
  INSTALL_FOLDER=$1/.git/hooks
  echo "Trying to install on $INSTALL_FOLDER"
	if [ -n $INSTALL_FOLDER ] && [ -d $INSTALL_FOLDER ] ; then
    if [ -e "$INSTALL_FOLDER/commit-msg" ] ; then
      echo "You're already using commit-msg hooks, you'll need to install this manually."
      exit 1
    else
      echo "Copying file..."
      cp commit-msg $INSTALL_FOLDER/
      echo "Done! Installed n ${INSTALL_FOLDER}"
      exit 0
    fi
  else
    echo "Sorry, couldn't find $INSTALL_FOLDER"
	  exit 1 
  fi
else
  echo "You need pass git repo path as first argument."
  exit 1
fi
