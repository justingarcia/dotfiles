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
# install() - Use apt-get to install a package, log results
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
log "-- UPDATING REPOSITORIES --"
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt-get update

# Install Packages ------------------------------------------------------------
log "-- INSTALLING PACKAGES --"
install zsh zsh
install uxterm xterm
#install urxvt rxvt-unicode-256color
install tmux tmux
install nvim neovim

# Install Fonts ---------------------------------------------------------------
log "-- INSTALLING FONTS --"
sudo unlink /etc/fonts/conf.d/70-no-bitmaps.conf
sudo ln -sf /etc/fonts/conf.avail/70-yes-bitmaps.conf /etc/fonts/conf.d/70-yes-bitmaps.conf
sudo dpkg-reconfigure fontconfig
#sudo make -C $DOTFILES_DIR/fonts/ctrld-font

# Create Symlinks -------------------------------------------------------------
log "-- CREATING SYMLINKS --"
# Remove preexisting symlinks and dotfiles ....................................
unlink ~/.zshrc
unlink ~/.Xresources
unlink ~/.xinitrc
unlink ~/.xsessionrc
#unlink ~/.urxvt
unlink ~/.tmux
unlink ~/.tmux.conf
unlink ~/.config/nvim
# Remove preexisting configuration folders ....................................
#sudo rm -rf ~/.urxvt > /dev/null 2>&1
sudo rm -rf ~/.tmux > /dev/null 2>&1
sudo rm -rf ~/.config/nvim > /dev/null 2>&1
# Create new symlinks .........................................................
ln -s $DOTFILES_DIR/zsh/zshrc ~/.zshrc
ln -s $DOTFILES_DIR/X11/Xresources ~/.Xresources
ln -s $DOTFILES_DIR/X11/xsessionrc ~/.xsessionrc
ln -s $DOTFILES_DIR/X11/xinitrc ~/.xinitrc
#ln -s $DOTFILES_DIR/X11/urxvt ~/.urxvt
ln -s $DOTFILES_DIR/tmux ~/.tmux
ln -s $DOTFILES_DIR/tmux/tmux.conf ~/.tmux.conf
ln -s $DOTFILES_DIR/nvim ~/.config/nvim

# Set Defaults ----------------------------------------------------------------
xrdb -merge ~/.Xresources
chsh -s `which zsh`
sudo update-alternatives --config x-terminal-emulator

# Log Summary -----------------------------------------------------------------
log "-- SUMMARY --"
cat $LOGFILE
