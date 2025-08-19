{pkgs, ...}:{
  stylix = {

    enable = true;
    polarity = "dark";
    base16Scheme = "${pkgs.base16-schemes}/share/themes/gruvbox-dark-medium.yaml";
    
    image = pkgs.fetchurl {
      url = "https://gruvbox-wallpapers.pages.dev/wallpapers/brands/gruvbox-rainbow-nix.png";
      sha256 = "0cae574c3e5742269b9c625a3d9ee14faeb650abcdae2e1c1136a89de5c2eb1c";
    };

    targets = {
      grub.enable = true;
      # grub.useWallpaper = true;
    };
 
    cursor = {
      name = "Capitaine Cursors (Gruvbox)";
      size = 16;
      package = pkgs.capitaine-cursors-themed;
    };

    fonts = {
      emoji = {
	name = "Noto Color Emoji";
	package = pkgs.noto-fonts-color-emoji;
      };
      monospace = {
        name = "JetBrainsMono Nerd Font Mono";
	package = pkgs.nerd-fonts.jetbrains-mono;
      };
      sansSerif = {
	name = "DejaVu Sans";
	package = pkgs.dejavu_fonts;
      };
      serif = {
	name = "DejaVu Serif";
	package = pkgs.dejavu_fonts;
      };

      sizes = {
	terminal = 8;
	desktop = 8;
	popups = 7;
	applications = 8;
      };
    };

    opacity = {
      desktop = 0.85;
      popups = 0.85;
      terminal = 0.85 ;
    };

  };
}
