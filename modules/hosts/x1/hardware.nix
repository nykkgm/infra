{
  inputs,
  ...
}:
{
  flake.modules.nixos."hosts/x1" = {
    imports = with inputs.nixos-hardware.nixosModules; [
      common-cpu-intel
      common-gpu-intel
      common-pc-ssd
      common-pc-laptop
      lenovo-thinkpad-x1-6th-gen
    ];
  };
}
