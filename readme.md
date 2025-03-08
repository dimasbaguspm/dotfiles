# dotfiles

This directory contains the dotfiles for Dimas' computer, generally it's a collection of configuration files for various programs and utilities.
Nix and Chezmoi are the primary tools used

## How to use it from scratch

1. Install [Nix](https://nixos.org/download/#nix-install-linux) and [Home Manager](https://nix-community.github.io/home-manager/index.xhtml#sec-install-standalone)
2. Ensure if the `nix` command is available in your shell
3. Run `nix-env -i chezmoi` to install Chezmoi (if you don't have it already)
4. Execute `chezmoi cd` and clone this repository to the `dotfiles` directory
5. Restructure the directory in Chezmoi and amend the empty string in `home.nix`
6. Run `chezmoi apply` to apply the changes immediately, this will also install some packages that has been declared in this repository

## Change shell to Oh My Zsh

1. Run `sudo chsh -s $(which zsh) $USER`
2. Logout and login again

## Tips

- If the storage is full, you might run `nix-collect-garbage` to free up some space
- Packages resource could be accessed from [NixOS Search](https://search.nixos.org/packages)
