#!/bin/bash
JHDir=~/.config/JumpHome

source $JHDir/homes

s() {
  if [[ "$1" =~ ^[[:graph:]]+$ ]]
  then
    echo "#$1" >> $JHDir/homes
    echo "alias j$1='cd $PWD'" >> $JHDir/homes
    source $JHDir/homes
  elif [[ $1 ]]
    then
      echo "home names must not contain whitespace"
  fi
}

l() {
  grep --color=never "^#" $JHDir/homes | cut --characters=2-
}

r() {
  if [[ "$1" =~ ^[[:graph:]]+$ ]]
  then
    sed -i "/^#$1/,/alias j$1=/d" $JHDir/homes
    unalias "j$1"
    source $JHDir/homes
  elif [[ $1 ]]
    then
      echo "home names must not contain whitespace"
  fi
}
