#!/bin/bash
    
# update_pr_ref_and_checkout can be used to update the local 
# reference of a PR and then checks it out.
function update_pr_ref_and_checkout() {
  if [ -z "$1" ]
  then
          echo "must specify a PR number"
          return
  fi

  git branch -f pr/"$1" upstream/pr/"$1" && git checkout pr/"$1"
}

# Run what is called from the command line.
"$@"
