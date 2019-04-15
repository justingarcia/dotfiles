Environment
-------------------------------------------------------------------------------
* zsh
* UXTerm
* tmux
* Neovim

Installation (Ubuntu 16.04+)
-------------------------------------------------------------------------------
1. Update the system:
   ```bash
   sudo apt-get update
   sudo apt-get upgrade
   ```
2. Install Git and developer tools (make is needed to install fonts):
   ```bash
   sudo apt-get install build-essential git
   ```
3. Clone this dotfiles repository, including submodules:
   ```bash
   cd ~
   git clone --recurse-submodules -j8 https://github.com/justingarcia/dotfiles
   ```
	 *Note:* `--recurse-submodules` requires version 2.13 of Git or later. 
	 For older versions (above 1.6.5), use `--recursive` instead.  
	 `-j8` is an optional optimization that requires version 2.8 of Git.
4. Run the included install script:
   ```bash
   cd dotfiles
   chmod +x install.sh
   ./install.sh
   ```
5. Load `~/dotfiles/nvim/init.vim` to auto-install *vim-plug*:
	 ```bash
   vim nvim/init.vim
	 ```
