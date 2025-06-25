{ config, pkgs, ... }:

{
  home.username = "demonaarwu";
  home.homeDirectory = "/home/demonaarwu/";
  home.stateVersion = "25.05"; # Or your preferred version

  home.packages = with pkgs; [
    # CLI Tools
    fish
    fd # find
    ripgrep # grep
    bat # cat
    git
    fzf
    yazi
    stow
    tree
    zoxide
    xclip
    # language related
    uv
    bun
    # LSP
    vscode-langservers-extracted
    pyright
    typescript
    svelte-language-server
    # editors related
    emacs
    emacs-lsp-booster
    neovim
    # apps
    firefox
    kdePackages.okular
    baobab
  ];

  # Optional: make fish your default shell
  # programs.fish.loginShell = true;

  xdg.mime.enable = true;
  targets.genericLinux.enable = true;
  programs.home-manager.enable = true;
}
