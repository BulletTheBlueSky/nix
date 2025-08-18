{ 
  wayland.windowManager.hyprland.enable = true;
  wayland.windowManager.hyprland.systemd.enable = true;

  wayland.windowManager.hyprland.settings = {
    env = [
      "NIXOS_OZONE_WL,1"
      "XDG_CURRENT_DESKTOP,Hyprland"
      "XDG_SESSION_DESKTOP,Hyprland"
      "XDG_SESSION_TYPE,wayland"
      "QT_QPA_PLATFORM,wayland"
      "XDG_SCREENSHOTS_DIR_,$HOME/screens"
      "$TERMINAL, foot"
    ];
    
    exec-once = [
      "waybar"
      "wl-paste --type text --watch cliphist store"
      "wl-paste --type image --watch cliphist store"
    ];
   
    input = {
      kb_layout = "us,ir";
      kb_variant = ",winkeys";
      kb_options = "grp:alt_shift_toggle, caps:escape_shifted_capslock, compose: ins";
      repeat_rate = 50;
      repeat_delay = 300;
    };
 
    general = {
      gaps_in = 2;
      gaps_out = 4;
      resize_on_border = true;
      layout = "master";
    };
    
    decoration = {
      rounding = 4;
      blur = {
	enabled = true;
	size = 10;
	passes = 2;
      };
    };
  };
}
