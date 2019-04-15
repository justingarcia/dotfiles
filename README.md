Installation (Ubuntu 16.04+)
-------------------------------------------------------------------------------
1. Update System
   ```bash
   sudo apt-get update
   sudo apt-get upgrade
   ```
2. Install Developer Tools
   ```bash
   sudo apt-get install build-essential git
   ```
3. Clone Dotfiles
   ```bash
   cd ~
   git clone https://github.com/justingarcia/dotfiles
   ```
4. Run Install Script
   ```bash
   cd dotfiles
   chmod +x install.sh
   ./install.sh
   ```
