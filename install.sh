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
#		log [message-type] <message-string>
# .............................................................................
log()
{
	if [ $# -eq 1 ]; then
		printf "[%s] %s\n" "$TIME" "$1" >> $LOGFILE
	else
		printf "[%s] [%-5s] %s\n" "$TIME" "$1" "$2" >> $LOGFILE
	fi
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

# Add and Update Repositories -------------------------------------------------
#sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt-get update

# Install Packages ------------------------------------------------------------
log "-- INSTALLING PACKAGES --"
install zsh zsh
install urxvt rxvt-unicode-256color
install tmux tmux
#install nvim neovim

# Install Fonts ---------------------------------------------------------------
# Create Symlinks -------------------------------------------------------------
