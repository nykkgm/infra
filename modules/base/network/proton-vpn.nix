{
  flake.modules.nixos.base =
    { pkgs, ... }:
    {
      networking = {
        firewall = {
          checkReversePath = false;
        };
      };

      environment.systemPackages = with pkgs; [
        wireguard-tools
        protonvpn-gui
      ];
    };
}
