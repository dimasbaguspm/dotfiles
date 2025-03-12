{pkgs, ...}: {
  home = {
    username = builtins.getEnv "USER";
    homeDirectory = builtins.getEnv "HOME";
    stateVersion = "22.05";
    shell = {
      enableZshIntegration = true;
    };

    packages = [
      pkgs.zsh
      pkgs.starship

      # git
      pkgs.git
      pkgs.lazygit
      pkgs.gh # GitHub wrapper

      # languages
      pkgs.nodejs_22
      pkgs.corepack_22

      # build tools
      pkgs.cargo
      pkgs.zig

      # file explorer
      pkgs.yazi

      # services
      pkgs.devenv

      # font
      pkgs.nerd-fonts.caskaydia-cove

      # editor
      pkgs.tree-sitter

      # utilities
      pkgs.bat
      pkgs.curl
      pkgs.grpcurl
      pkgs.jq
      pkgs.fzf
      pkgs.fd
      pkgs.ripgrep
    ];
  };

  xdg = {
    enable = true;
  };

  fonts = {
    fontconfig = {
      enable = true;
    };
  };

  editorconfig = {
    enable = true;
    settings = {
      "*" = {
        charset = "utf-8";
        end_of_line = "lf";
        trim_trailing_whitespace = true;
        insert_final_newline = true;
        indent_style = "space";
        indent_size = 2;
      };
    };
  };

  programs.neovim = {
    enable = true;
    viAlias = true;
    vimAlias = true;
    vimdiffAlias = true;
    defaultEditor = true;
  };

  programs.direnv = {
    enable = true;
    enableZshIntegration = true;
    nix-direnv.enable = true;
  };

  programs.git = {
    enable = true;
    userEmail = builtins.getEnv "GIT_EMAIL";
    userName = builtins.getEnv "GIT_USERNAME";
  };

  # If the installation smooth, then change the default shell to zsh
  # by run `sudo chsh -s $(which zsh) $USER` in the terminal, then logout and login again
  programs.zsh = {
    enable = true;
    initExtraFirst = ''
      ZSH_DISABLE_COMPFIX=true

      # apply the defined environment variables
      ${builtins.readFile ./env.sh}
    '';
    initExtra = ''
      . "$HOME/.nix-profile/etc/profile.d/hm-session-vars.sh"

      # nix handler for single user installation
      # . "$HOME/.nix-profile/etc/profile.d/nix.sh"

      # nix handler for multi user installation
      # . "/nix/var/nix/profiles/default/etc/profile.d/nix.sh"

      # eval "$(direnv hook zsh)"
      eval "$(starship init zsh)"
    '';

    syntaxHighlighting.enable = true;
    autosuggestion.enable = true;
    autocd = true;

    shellAliases = {
      g = "git";
      lg = "lazygit";
      e = "$EDITOR";
      lsa = "ls -la";
      ".." = "cd ..";
    };

    oh-my-zsh = {
      enable = true;
      theme = "robbyrussell";
      plugins = [
        "git"
      ];
    };
  };

  programs.home-manager.enable = true;
}
