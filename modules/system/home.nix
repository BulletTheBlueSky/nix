{ config, pkgs, user, ...}:
{
  programs.home-manager.enable = true;
  home.stateVersion = "25.05";  
  
  home.username = "${user}";
  home.homeDirectory = "/home/${user}";

  imports = [
    ../home-manager
  ];
}
