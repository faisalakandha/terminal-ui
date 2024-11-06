#!/bin/bash

# List of packages to check and install
packages=("neofetch" "git" "curl" "vim")  # Modify this list with your desired packages

# Loop through the packages and check if they are installed
for package in "${packages[@]}"; do
    if ! command -v "$package" &> /dev/null; then
        echo "$package not found. Installing..."
        # Update package list and install the package (for Ubuntu/Debian)
        sudo apt update && sudo apt install -y "$package"
    else
        echo "$package is already installed."
    fi
done

# Clear Screen
clear

# Run neofetch
neofetch
