#!/bin/bash
JHDir=~/.config/JumpHome

source $JHDir/homes_a

s() {
  if [[ "$1" =~ ^[[:graph:]]+$ ]]
  then
    echo "alias j$1='cd $PWD'" >> $JHDir/homes_a
    echo "$1" >> $JHDir/homes_l 
    source $JHDir/homes_a
  elif [[ $1 ]]
    then
      echo "home names must not contain whitespace"
  fi
}

l() {
  cat $JHDir/homes_l
}
