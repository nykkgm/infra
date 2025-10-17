{
  flake.modules = {
    nixos."hosts/x1" =
      { pkgs, ... }:
      {
        environment.systemPackages = [ pkgs.brightnessctl ];
      };
  };
}
