# dotfiles

This directory contains the dotfiles for Dimas' computer, generally it's a collection of configuration files for various programs and utilities.
Nix and Chezmoi are the primary tools used

## How to use it from scratch

1. Install [Nix](https://nixos.org/download/#nix-install-linux) and [Home Manager](https://nix-community.github.io/home-manager/index.xhtml#sec-install-standalone)
2. Run `nix-env -i chezmoi` to install Chezmoi (if you don't have it already)
3. Execute `chezmoi init https://github.com/dimasbaguspm/dotfiles.git` and go to that source dir by using `chezmoi cd`
4. Run `chezmoi apply` to apply the changes immediately, this will also duplicate the dotfiles to the appropriate locations
5. In `.config/home-manager/env.sh` amend the pairs to suite with some credentials and settings
6. In `.config/home-manager/setup-handler.sh`, select one of the profiles and uncomment the corresponding line
7. Run `home-manager switch --impure` to apply the changes to your system
8. Wait until the process finishes and relaunch the terminal

## Change shell to Oh My Zsh

1. Run `sudo chsh -s $(which zsh) $USER`
2. Logout and login again

## Automatic Shell Activation

Rely on [direnv](https://direnv.net/) [devenv](https://devenv.sh/) to have the dependencies reloaded automatically once you're in the project workspace

1. Navigate to the project directory
2. Create `.envrc` in your project directory and fill it with command `echo 'eval "$(devenv direnvrc)"\n\nuse devenv' > .envrc && direnv allow`
3. Run `devenv init`
4. Now the project should be automatically activated with the devenv shell whenever you enter the directory

## Tips

- If the storage is full, you might run `nix-collect-garbage` to free up some space
- Packages resource could be accessed from [NixOS Search](https://search.nixos.org/packages)
