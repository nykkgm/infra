{
  flake.modules.nixos."hosts/x1" =
    { pkgs, ... }:
    {
      fileSystems."/" = {
        device = "/dev/disk/by-uuid/3eac05d3-06b1-4c4b-a03e-d240203356eb";
        fsType = "btrfs";
        options = [ "subvol=@" ];
      };

      boot.initrd.luks.devices."luks-80c946e3-e944-49c8-bd34-0f25b4cd6041".device =
        "/dev/disk/by-uuid/80c946e3-e944-49c8-bd34-0f25b4cd6041";

      fileSystems."/boot" = {
        device = "/dev/disk/by-uuid/4FB4-3C90";
        fsType = "vfat";
        options = [
          "fmask=0077"
          "dmask=0077"
        ];
      };

      swapDevices = [
        {
          device = "/dev/disk/by-uuid/b918b491-d52f-4527-9203-3f1fcd106d19";
        }
      ];

      environment.systemPackages = [ pkgs.cifs-utils ];
      fileSystems."/mnt/nas" = {
        device = "//192.168.68.50/nas";
        fsType = "cifs";
        options =
          let
            automount_opts = "x-systemd.automount,noauto,x-systemd.idle-timeout=60,x-systemd.device-timeout=5s,x-systemd.mount-timeout=5s";
          in
          [ "${automount_opts},credentials=/etc/nixos/smb-secrets" ];
      };
    };
}
