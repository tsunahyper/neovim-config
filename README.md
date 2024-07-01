# Haziq's Neovim Setup Guide

Welcome to your step-by-step guide to setting up Neovim with a customized configuration on a new machine. Follow these instructions to get a powerful, plugin-enhanced Neovim environment ready for development.

## Prerequisites

- **Operating System**: macOS
- **Package Manager**: [Homebrew](https://brew.sh/)
- **Terminal**: macOS Terminal or [Warp](https://www.warp.dev/)

## Step 1: Install Homebrew

First, you'll need to install Homebrew, a package manager for macOS. Open your terminal and run the following command:

--> /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

## Step 2: Install Neovim

Once Homebrew is installed, use it to install Neovim:

--> brew install nvim

After Neovim is installed, navigate to the Neovim configuration directory:

--> cd ~/.config/nvim/

## Step 3: Clone the Configuration Repository

Next, clone your Neovim configuration repository. You can either clone it directly into the Neovim configuration directory or clone it to your Desktop and then move it:

Option 1: Clone Directly into the Configuration Directory

--> git clone https://github.com/tsunahyper/neovim-config.git ~/.config/nvim

Option 2: Clone to Desktop and Move:

--> cd ~/Desktop

--> git clone https://github.com/tsunahyper/neovim-config.git

--> mv ~/Desktop/neovim-config ~/.config/nvim

## Step 4: Install Lazy Plugin Manager

Install the Lazy plugin manager to manage your Neovim plugins:

-->brew install lazy

## Step 5: Open Neovim and Install Plugins

Now, open Neovim:

--> nvim .

Inside Neovim, open the Lazy plugin manager by typing:

--> :Lazy

This will open the Lazy plugin UI. From here, you can install or update all plugins:

- Press I to install missing plugins.
- Press U to update existing plugins.

... Wait for the installation and updates to complete.

## Additional Plugins

Added New Plugins : 
[1] : Copilot
- Copilot is now setup along with the other plugins upon execution of Neovim.
- To setup copilot run this command : --> :Copilot setup
- This will redirect user to a github browser and authenticate through copilot.
- Once all setup is complete, You can now use copilot as usual in Github. 

## Troubleshooting

Common Issues: 
- E492: Not an editor command: Ensure that your plugin is correctly installed and configured. Check your Neovim configuration files and ensure the plugin is listed and loaded correctly.
- Lazygit is not installed properly : If you encounter this error, go ahead and install the plugins manually on the terminal or warp itself e.g. : 'brew install lazygit'. This will resolve the issue of the plugins being installed via Lazy as a package manager

------------------------------------------------------------------------------------------------------------------------------------
~~ Enjoy Coding!!! ~~

Upon completing all the steps, you should have a fully functional Neovim setup with enhanced features. Enjoy coding and enhance your skills using Neovim!

** Now you are ready to become a cool developer. Enjoy Devs!! **
