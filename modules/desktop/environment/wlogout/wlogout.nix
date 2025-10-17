_: {
  flake.modules = {
    homeManager.desktop = _: {
      programs.wlogout = {
        enable = true;
        layout = [
          {
            label = "lock";
            action = "swaylock";
            text = "Lock";
            keybind = "l";
          }
          {
            label = "logout";
            action = "niri msg action quit -s";
            text = "Logout";
            keybind = "e";
          }
          {
            label = "shutdown";
            action = "systemctl poweroff";
            text = "Shutdown";
            keybind = "s";
          }
          {
            label = "suspend";
            action = "systemctl suspend";
            text = "Suspend";
            keybind = "u";
          }
          {
            label = "reboot";
            action = "systemctl reboot";
            text = "Reboot";
            keybind = "r";
          }
        ];
        style = ./style.css;
      };
    };
  };
}
