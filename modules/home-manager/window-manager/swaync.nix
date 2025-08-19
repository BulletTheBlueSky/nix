{
  services.swaync = {
    enable = true;
    settings = {
      positionX = "right";
      positionY = "top";
      control-center-radius = 1;
      fit-to-screen = true;
      layer-shell = true;
      layer = "overlay";
      control-center-layer = "overlay";
      timeout = 10;
      timeout-low = 5;
      timeout-critical = 0;

      widgets = [
	"inhibitor"
	"dnd"
	"mpris"
	"notifications"
      ];

      widget-config = {
	title = {
	  text = "Notifications";
	  clear-all-button = true;
	  button-text = "Clear All";
	};
	dnd = {
	  text = "DND";
	};
	mpris = {
	  blur = true;
	};
      };
 
    };
  };
}
