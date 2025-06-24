{ config, pkgs, ... }:

{
  home.username = "demonaarwu";
  home.homeDirectory = "/home/demonaarwu/";
  home.stateVersion = "25.05"; # Or your preferred version

  home.packages = with pkgs; [
    git
    ripgrep
    bat
    fzf
    emacs
    emacs-lsp-booster
    yazi
  ];

  xdg.mime.enable = true;
  targets.genericLinux.enable = true;
  programs.home-manager.enable = true;
}
