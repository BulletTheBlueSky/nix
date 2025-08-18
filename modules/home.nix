{ config, pkgs, ...}:
{
  programs.home-manager.enable = true;
  home.stateVersion = "25.05";  

  home.username = "b";
  home.homeDirectory = "/home/b";

  imports = [
    ./home-manager
  ];
}
