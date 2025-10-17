{
  flake.modules.nixos."hosts/x1" = {
    boot = {
      initrd = {
        availableKernelModules = [
          "xhci_pci"
          "nvme"
          "usb_storage"
          "sd_mod"
        ];
      };

      kernelModules = [ "kvm-intel" ];
    };
  };
}
