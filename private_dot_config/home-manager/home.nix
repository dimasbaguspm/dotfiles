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

      pkgs.git
      pkgs.lazygit

      # languages
      pkgs.nodejs_22
      pkgs.corepack_22
      pkgs.cargo

      # file explorer
      pkgs.yazi

      # services
      pkgs.devenv

      # font
      pkgs.nerd-fonts.caskaydia-cove

      # editor
      pkgs.tree-sitter

      # utilities
      pkgs.curl
      pkgs.grpcurl
      pkgs.jq
    ];
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

  programs.git = {
    enable = true;
    userEmail = ""; # NOTE: This is not the same as your email for git
    userName = ""; # NOTE: This is not the same as your username for git
  };

  # If the installation smooth, then change the default shell to zsh
  # by run `sudo chsh -s $(which zsh) $USER` in the terminal, then logout and login again
  programs.zsh = {
    enable = true;
    initExtraFirst = ''
      ZSH_DISABLE_COMPFIX=true
    '';
    initExtra = ''
      # . "$HOME/.nix-profile/etc/profile.d/nix.sh"
      . "/nix/var/nix/profiles/default/etc/profile.d/nix.sh"
      . "$HOME/.nix-profile/etc/profile.d/hm-session-vars.sh"
    '';

    syntaxHighlighting.enable = true;
    autosuggestion.enable = true;
    autocd = true;

    shellAliases = {
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

  home.sessionVariables = {
    EDITOR = "nvim";
    CODE_STATS_USERNAME = ""; # NOTE: your username for code stats
    CODE_STATS_BASE_URL = ""; # NOTE: your base url for code stats
    CODE_STATS_API = ""; # NOTE: your api token for code stats
  };
}
