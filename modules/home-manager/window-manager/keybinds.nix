{ 
  wayland.windowManager.hyprland.settings = {
    "$mod" = "SUPER";
    "$terminal" = "foot";
    bind =
    [ 
      # main
      "$mod, Return, exec, $terminal"
      "$mod, Period, exec, bemoji -t"
      "$mod, Space, exec, fuzzel"
      "$mod SHIFT, Q, exit,"
      "$mod, Q, killactive,"
      "$mod, F, togglefloating,"
      "$mod SHIFT, Return, layoutmsg, swapwithmaster master"
      "$mod, V, exec, cliphist list | fuzzel --dmenu | cliphist decode | wl-copy"

      # moving focus
      "$mod, H, movefocus, l" 
      "$mod, J, movefocus, d" 
      "$mod, K, movefocus, u"
      "$mod, L, movefocus, r"

      # swapping windows 
      "$mod SHIFT, H, swapwindow, l"
      "$mod SHIFT, J, swapwindow, d"
      "$mod SHIFT, K, swapwindow, u"
      "$mod SHIFT, L, swapwindow, r"
      
      # resizing windows
      "$mod ALT, H, resizeactive, -30 0"
      "$mod ALT, J, resizeactive, 0 30"
      "$mod ALT, K, resizeactive, 0 -30"
      "$mod ALT, L, resizeactive, 30 0"
      
      # switching workspace
      "$mod, 1, workspace, 1"
      "$mod, 2, workspace, 2"
      "$mod, 3, workspace, 3"
      "$mod, 4, workspace, 4"
      "$mod, 5, workspace, 5"
      "$mod, 6, workspace, 6"
      "$mod, 7, workspace, 7"
      "$mod, 8, workspace, 8"
      "$mod, 9, workspace, 9"
      "$mod, 0, workspace, 10"
 
      # switching window to workspace
      "$mod SHIFT, 1, movetoworkspacesilent, 1"
      "$mod SHIFT, 2, movetoworkspacesilent, 2"
      "$mod SHIFT, 3, movetoworkspacesilent, 3"
      "$mod SHIFT, 4, movetoworkspacesilent, 4"
      "$mod SHIFT, 5, movetoworkspacesilent, 5"
      "$mod SHIFT, 6, movetoworkspacesilent, 6"
      "$mod SHIFT, 7, movetoworkspacesilent, 7"
      "$mod SHIFT, 8, movetoworkspacesilent, 8"
      "$mod SHIFT, 9, movetoworkspacesilent, 9"
      "$mod SHIFT, 0, movetoworkspacesilent, 10"

      # scratchpad
      "$mod, equal, togglespecialworkspace, magic"
      "$mod SHIFT, equal, movetoworkspace, special:magic"
    ];
    bindm =[
      # move & resize windows with mouse
      "$mod, mouse:272, movewindow"
      "$mod, mouse:273, resizewindow"
    ];    
  };
}
