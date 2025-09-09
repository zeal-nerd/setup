# Setups

This repository contains scripts, configurations, and guides to quickly set up and configure new installations.

## Directory Structure

```text
setup/
├── install.sh
├── README.md
├── configs
├── dotfiles
├── guides
├── packages
└── scripts
```

### Folder/File Descriptions
---
- **`configs/`**  
  Contains application-specific configuration files that are not hidden dotfiles.  
  Examples:  
  - `appname/app-config-file` → Configuration descriptions

---

- **`dotfiles/`**  
  Contains hidden configuration files for in home directory. 
  Examples:  
  - `.bashrc` → Shell configuration  
  - `.vimrc` → Vim configuration  
  - `.gitconfig` → Git settings  

---

- **`guides/`**  
  Contains notes, instructions, and tutorials for setting up apps, window managers, and other tools.  
  Example:  
  - `app-setup-guid.md` → Guide description  

---

- **`scripts/`**  
  Custom scripts to automate repetitive tasks or system setup.  
  Examples:  
  - `backup.sh` → Backup important files  
  - `cleanup.sh` → Remove temporary files and cache  

---

- **`packages/`**  
  Lists of packages to install via your installation script.  
  Examples:  
  - `fedora-packages.txt` → System packages to install on Fedora  
  - `npm-packages.txt` → Global Node.js packages  
  - `pip-packages.txt` → Python packages  

---
- **`install.sh`**  
  Main bootstrap script that installs packages, sets up dotfiles and configs, and prepares the system environment.  
  Usage:  
```bash
git clone https://github.com/zeal-nerd/setup.git
cd setup
chmod +x install.sh
bash install.sh
```