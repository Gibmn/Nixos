{ config, pkgs, ... }:

{
  home.username = "morgan";
  home.homeDirectory = "/home/morgan";

  home.stateVersion = "26.05";

  home.packages = with pkgs; [
    cowsay
  ];

  programs.home-manager.enable = true;
}