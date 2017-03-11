################################################################################
# Project name   :
# File name      : Push_git.sh
# Created date   : Sat 11 Mar 2017
# Author         : Huy Hung Ho
# Last modified  : Sat 11 Mar 2017
# Guide          :
###############################################################################
#!/bin/bash

git add $1
git commit -m "Edit $(basename $1)"
git push
