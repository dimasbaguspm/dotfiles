{pkgs, ...}: {
  home = {
    username = ""; # NOTE: terminal username
    homeDirectory = ""; # NOTE: the home directory, e.g. /home/username
    stateVersion = "22.05";
    shell = {
      enableZshIntegration = true;
    };

    packages = [
      pkgs.git
      pkgs.nodejs_22
      pkgs.corepack_22
      pkgs.lazygit
      pkgs.zsh
      pkgs.tree-sitter
      pkgs.cargo
      pkgs.yazi

      # font
      pkgs.nerd-fonts.caskaydia-cove

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
    plugins = [
      {
        name = "zsh-autosuggestions";
        src = pkgs.fetchFromGitHub {
          owner = "zsh-users";
          repo = "zsh-autosuggestions";
          rev = "v0.4.0";
          sha256 = "0z6i9wjjklb4lvr7zjhbphibsyx51psv50gm07mbb0kj9058j6kc";
        };
      }
    ];

    initExtra = ''
      . "$HOME/.nix-profile/etc/profile.d/nix.sh"
      . "$HOME/.nix-profile/etc/profile.d/hm-session-vars.sh"
    '';

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
