{ config, pkgs, ...}:
{
  programs.xwayland.enable = true;
  
  programs.zsh.enable = true;

  users.users.morgan.shell = pkgs.zsh;

  programs.steam = {
    enable = true;
    remotePlay.openFirewall = true;
    dedicatedServer.openFirewall = true;
  };
  
  fileSystems."/home/morgan/.config/nixos" = {
  device = "/etc/nixos";
  fsType = "none";
  options = [ "bind" ];
  };
}
