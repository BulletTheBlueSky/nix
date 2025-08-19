{ config, lib, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
    ];

  boot.loader = {
    efi = {
      canTouchEfiVariables = true;
    };
    grub = {
      enable = true;
      efiSupport = true;
      device = "nodev";
    };
  };

  boot.kernelPackages = pkgs.linuxPackages_latest;

  nix.gc = {
    automatic = true;
    dates = "daily";
    options = "--delete-older-than 7d";
  };

  networking.hostName = "home-pc";
  networking.networkmanager.enable = true;  

  time.timeZone = "Asia/Tehran";

  i18n.defaultLocale = "en_US.UTF-8";
  console = {
    keyMap = "us";
  };
  
  services.pipewire = {
    enable = true;
    pulse.enable = true;
  };

  programs.hyprland.enable = true;

  users.users.b = {
    isNormalUser = true;
    extraGroups = [ "wheel" ]; 
    packages = with pkgs; [
      tree
    ];
    hashedPassword = "$y$j9T$bHKZOfbE4CCn9Hxf2kUPY0$HKqyKRJqsoT/AiSYIril305.ZH3v6cVHYApeqhpVVv6";
  };

  environment.systemPackages = with pkgs; [
    vim
    wget
    nh
    nix-output-monitor
  ];
  
  programs.ssh.startAgent = true;
 
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  nixpkgs.config.allowUnfree = true;

  system.stateVersion = "25.05";
}

