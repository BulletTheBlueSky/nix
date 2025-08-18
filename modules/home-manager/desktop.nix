{ pkgs, ...}:
{
  stylix.icons = {
    enable = true;
    package = pkgs.papirus-icon-theme;
    dark = "Papirus-Dark";
    light = "Papirus-Light";
  }; 

  xdg.mimeApps.defaultApplications = {
    "application/pdpf" = ["zathura.desktop"];
    "image/*" = ["imv.desktop"];
    "video/png" = ["mpv.desktop"];
    "video/jpg" = ["mpv.desktop"];
    "video/*" = ["mpv.desktop"];
  };  
 
  services.udiskie.enable = true;

  home.packages = with pkgs; [
    # command line utilities
    ffmpeg

    # apps
    calibre
    imv
    qbittorrent
    
    # window manager 
    bemoji
    cliphist 
    libnotify
    lxqt.pavucontrol-qt
    wl-clipboard
    xdg-desktop-portal-gtk
    # 
  ];
}
