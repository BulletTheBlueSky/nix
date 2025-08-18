{config, lib, ...}:
{
  stylix.targets.waybar = {
    addCss = false;
    enable = true;
  };
  programs.waybar = {
    enable = true; 
    settings = {
      mainBar = {
	layer = "top";
	position = "top";
	# height = 2;
	fixed-center = true;
	modules-left = ["hyprland/workspaces"];
	modules-center = ["clock#date" "clock#time"];
	modules-right = ["tray" "hyprland/language" "custom/weather" "pulseaudio"];
        "hyprland/workspaces" = {
	  show-special = true;
	  format = "{icon}";
	  format-icons = {
	    "magic" = "=";
	    "1" = "1";
	    "2" = "2";
	    "3" = "3";
	    "4" = "4";
	    "5" = "5";
	    "6" = "6";
	    "7" = "7";
	    "8" = "8";
	    "9" = "9";
	    "10" = "10";
	  };
	  persistent-workspaces = {
	    "*" = 10;
	  };
        };

	"hyprland/language" = {
	  format = "{}";
	  format-en = "en";
	  format-fa = "fa";
	  tooltip = false;
	};
	
	"custom/weather" = {
	  format = "{}";
	  exec = "curl -s 'wttr.in/Tehran?format=%m+%c+%t'";
	  interval = 300;
	  class = "weather";
	  tooltip = false;
	};

	"pulseaudio" = {
	  on-click = "pavucontrol-qt";
	  tooltip = false;
	};

	"clock#time" = {
	  format = "{:%H:%M}";
	  format-alt = "{:%H:%M (%Z)}";
          tooltip = false;
	  timezones = [
	    ""
	    "Etc/UTC"
	    "CST6CDT"
	  ];
	  actions = {
	    on-scroll-down = "tz_down";
	    on-scroll-up = "tz_up";
	  };
	};


	"clock#date" = {
	  format = "{:%a}";
	  tooltip-format = "<tt><small>{calendar}</small></tt>";
	  calendar = {
	    mode = "year";
	    mode-mon-col = 3;
	    weeks-pos = "right";
	    on-scroll = 1;
	    format = {
	      months = "<span color='#${config.lib.stylix.colors.base0E}'><b>{}</b></span>";
	      days = "<span color='#${config.lib.stylix.colors.base05}'><b>{}</b></span>";
	      weeks = "<span color='#${config.lib.stylix.colors.base0B}'><b>W{}</b></span>";
	      weekdays = "<span color='#${config.lib.stylix.colors.base0A}'><b>{}</b></span>";
	      today = "<span color='#${config.lib.stylix.colors.base09}'><b><u>{}</u></b></span>";
	    };
	  };
	  actions = {
	    on-click-right = "mode";
	    on-scroll-down = "shift_up";   
	    on-scroll-up = "shift_down";  
	  };
	};

	"tray" = {
	  icon-size = 6;
	};
        
      };
    };
 
    style = ''
    *{
      border: none;
      min-height: 0px;
    }
    window#waybar {
      background: transparent; 
      min-height: 0px;
    }

    .modules-left,
    .modules-center, 
    .modules-right {
      background: alpha (@base01, ${toString(config.stylix.opacity.desktop)});
      padding-left: 5px;
      padding-right: 5px;
      margin-top: 3px;
      margin-left: 5px;
      margin-right: 5px;
      border-radius: 20px;
    }
    .modules-center {
      padding-left: 0px;
      padding-right: 0px;
    }

    #workspaces button {
      padding: 2px;
    }
    #workspaces button label {
      color: @base05;
    } 
    #workspaces button.active label {
      color: @base01;
    }
    #workspaces button.active {
      background: @base0A;
    }
    #workspaces button.urgent {
      background: @base09;
    }
  
    #clock {
      margin: 5px;
      color: @base05;
    }
    
    #language {
      margin: 5px;
      color: @base0B;
    }

    #custom-weather {
      margin : 5px;
      color: @base0C;
    }

    #pulseaudio {
      margin: 5px;
      color: @base0D;
    }

    tooltip {
      background: alpha (@base01, ${toString(config.stylix.opacity.popups)});
      padding: 2px;
    }
    tooltip label {
      color: @base05;
      padding: 0px;
    }
    '';
    
  };
}
