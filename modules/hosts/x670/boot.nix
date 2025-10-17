{
  flake.modules.nixos."hosts/x670".boot = {
    #loader = {
    #  systemd-boot.enable = true;
    #  efi.canTouchEfiVariables = true;
    #};

    initrd = {
      availableKernelModules = [
        "nvme"
        "xhci_pci"
        "ahci"
        "uas"
        "usb_storage"
        "usbhid"
        "sd_mod"
      ];
    };

    kernelModules = [ "kvm-amd" ];
  };
}
