{
  inputs,
  lib,
  ...
}:
{
  flake.modules.nixos."hosts/x670" =
    { config, ... }:
    {
      imports = with inputs.nixos-hardware.nixosModules; [
        common-cpu-amd
        common-pc-ssd
      ];

      nixpkgs.config.allowUnfree = true;

      hardware.graphics.enable = true;
      services.xserver.videoDrivers = [ "nvidia" ];
      hardware.nvidia = {
        modesetting.enable = true;
        powerManagement = {
          enable = false;
          finegrained = false;
        };
        open = true;
        nvidiaSettings = true;
      };

      hardware.cpu.amd.updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;
    };
}
