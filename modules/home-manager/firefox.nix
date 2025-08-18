{ pkgs, ...}:
{
  stylix.targets.firefox.profileNames = [ "b" ];
  programs.firefox = {
    enable = true;
  
    profiles.b = {
    };
 };
}
