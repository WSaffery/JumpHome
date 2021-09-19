# JumpHome
FOSS Shell bookmarks or "homes" for Bash.

## Commands
**s** HOME_NAME [TARGET_DIRECTORY]
* Saves a directory as a home, meaning that `jHOME_NAME` becomes aliased to `cd DIRECTORY`
* DIRECTORY is the current working directory if the TARGET_DIRECTORY argument isn't given

**r** HOME_NAME
* Removes a home

**l**
* Lists the names of all stored homes

### Note
This script is very heavily inspired by ["bashmarks"](https://github.com/huyng/bashmarks).

### Why are you using "homes" when that's already got a obvious existing meaning in \*nix
Thought it was a neat reference to set home, for those who know.
