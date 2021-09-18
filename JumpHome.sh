#!/bin/bash

# This program is free software: you can redistribute it and/or modify
#     it under the terms of the GNU General Public License as published by
#     the Free Software Foundation, either version 3 of the License, or
#     (at your option) any later version.
#
#     This program is distributed in the hope that it will be useful,
#     but WITHOUT ANY WARRANTY; without even the implied warranty of
#     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#     GNU General Public License for more details.
#
#     You should have received a copy of the GNU General Public License
#     along with this program.  If not, see <https://www.gnu.org/licenses/>.


JHDir=~/.config/JumpHome

source $JHDir/homes

s() {
  if [[ "$1" =~ ^[[:graph:]]+$ ]]
  then
    if [[ -d "$2" ]]
    then
      TDIR=`realpath $2`
    elif [[ -n "$2" ]]
      then
        echo "target must be a directory"
        return;
    else
      TDIR=$PWD
    fi
    echo "#$1" >> $JHDir/homes
    echo "alias j$1='cd $TDIR'" >> $JHDir/homes
    source $JHDir/homes
  elif [[ "$1" ]]
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
