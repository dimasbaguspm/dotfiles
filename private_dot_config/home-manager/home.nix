{pkgs, ...}: {
  home = {
    username = builtins.getEnv "USER";
    homeDirectory = builtins.getEnv "HOME";
    stateVersion = "22.05";
    shell = {
      enableZshIntegration = true;
    };

    packages = [
      # productivity
      pkgs.zsh
      pkgs.starship
      pkgs.calcure

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
      pkgs.posting

      # font
      pkgs.nerd-fonts.caskaydia-cove

      # editor
      pkgs.harlequin

      # utilities
      pkgs.bat
      pkgs.btop
      pkgs.curl
      pkgs.tree-sitter
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
      ${builtins.readFile ./env.sh}
    '';
    initExtra = ''
      ${builtins.readFile ./setup-handler.sh}
      eval "$(starship init zsh)"
    '';

    syntaxHighlighting.enable = true;
    autosuggestion.enable = true;
    autocd = true;

    shellAliases = {
      g = "git";
      e = "$EDITOR";
      lg = "lazygit";
      db = "harlequin";
      cal = "calcure";
      post = "posting";
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
