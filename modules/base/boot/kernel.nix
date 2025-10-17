{
  flake.modules = {
    nixos.base =
      { pkgs, ... }:
      {
        boot.kernelPackages = pkgs.linuxKernel.packages.linux_zen;
      };
  };
}
