_: {
  flake.modules = {
    nixos.desktop = {
      programs = {
        niri.enable = true;
      };
    };

    homeManager.desktop = {
      home = {
        file = {
          ".config/niri/config.kdl".text = builtins.readFile ./config.kdl;
        };
      };
    };
  };
}
