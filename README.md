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
3. Clone this dotfiles repository:
   ```bash
   cd ~
   git clone https://github.com/justingarcia/dotfiles
   ```
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
