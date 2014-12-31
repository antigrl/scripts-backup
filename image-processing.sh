#!/bin/bash

daemon() {
  chsum1=""

  while [[ true ]]
  do
    chsum2='find . -name "Thumbs.db"'
    if  [[ $chsum1 != $chsum2 ]] ; then
        compile
        chsum1=$chsum2
      fi
      sleep 2
  done
}