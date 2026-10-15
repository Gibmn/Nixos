{ config, pkgs, ...}:
{
  xdg.portal = {
    enable = true;
    extraPortals = [
      pkgs.xdg-desktop-portal-gnome
      pkgs.xdg-desktop-portal-gtk
    ];
  };
  services.flatpak.enable = true;
  
  programs.xwayland.enable = true;
  
  programs.zsh.enable = true;

  users.users.morgan.shell = pkgs.zsh;

  programs.steam = {
    enable = true;
    remotePlay.openFirewall = true;
    dedicatedServer.openFirewall = true;
  };

  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };

  hardware.pulseaudio.enable = false;
  
  fileSystems."/home/morgan/.config/nixos" = {
  device = "/etc/nixos";
  fsType = "none";
  options = [ "bind" ];
  };
}
