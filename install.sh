#!/bin/sh
# Install justingarcia/dotfiles
# Author: Justin Garcia
# =============================================================================

DATE=$(date +"%F")
TIME=$(date +"%F %T %Z") 
DOTFILES_DIR=~/dotfiles
LOGFILE=~/dotfiles-install-$DATE.log
touch $LOGFILE

# Functions -------------------------------------------------------------------
# .............................................................................
# log() - Log a message
# Usage:
#		log <message-type> <message-string>
# .............................................................................
log()
{
	printf "[%s] [%-5s] %s\n" "$TIME" "$1" "$2" >> $LOGFILE
}

# .............................................................................
# install() - Use apt-get to install a program
# Usage:
#		install <command-name> <package-name>
# .............................................................................
install()
{
	sudo apt-get -y install $2
	if command -v $1 > /dev/null; then
		log INFO "$1 installed"
	else
		log ERROR "$1 failed to install"
	fi
}

# Install Packages ------------------------------------------------------------
log INFO "-- INSTALLING PACKAGES --"
install zsh zsh
install urxvt rxvt-unicode-256color
install tmux tmux

# Install Fonts ---------------------------------------------------------------
# Create Symlinks -------------------------------------------------------------
