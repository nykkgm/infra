{
  flake.modules = {
    nixos.desktop = {

    };
    homeManager.desktop = {
      services.swww.enable = true;

      home.file = {
        ".local/share/wallpapers/01.jpg".source = ../../../assets/wallpapers/pexels-alancabello-1210305.jpg;
      };
    };
  };
}
