# -----------------------------------------------------------------------------
# Project name  :
# File name     : run_localweb.csh
# Created date  : Oct 21 2022
# Author 		: Ho Huy Hung
# Last modified : Oct 21 2022 06:44
# Guide 		: Test local website
# -----------------------------------------------------------------------------
#!/bin/csh

bundle install
bundle exec jekyll serve --watch
