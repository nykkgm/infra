{
  flake.modules = {
    nixos.base = {
      #  boot = {
      #    initrd.systemd.enable = true;
      #    tmp = {
      #      useTmpfs = true;
      #      cleanOnBoot = true;
      #      tmpfsSize = "95%";
      #    };
      #  };
      boot.loader = {
        efi.canTouchEfiVariables = true;
        grub = {
          enable = true;
          devices = [ "nodev" ];
          efiSupport = true;
          useOSProber = true;
        };
      };
    };
  };
}
