{
  flake.modules = {
    nixos.base = {
      services.udisks2.enable = true;
    };

    homeManager.base =
      { pkgs, ... }:
      {
        services.udiskie = {
          enable = true;
          settings = {
            program_options = {
              file_manager = "${pkgs.xfce.thunar}/bin/thunar";
            };
          };
        };
      };
  };
}
