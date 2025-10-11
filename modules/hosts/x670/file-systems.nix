{
  flake.modules.nixos."hosts/x670" =
    { pkgs, ... }:
    {
      fileSystems."/" = {
        device = "/dev/disk/by-uuid/355b4280-7906-4d38-a61b-c577f4c3b3b3";
        fsType = "btrfs";
        options = [ "subvol=@" ];
      };

      fileSystems."/boot" = {
        device = "/dev/disk/by-uuid/774E-0E56";
        fsType = "vfat";
        options = [
          "fmask=0077"
          "dmask=0077"
        ];
      };

      fileSystems."/persist" = {
        device = "/dev/disk/by-uuid/a3b33283-ec16-4df8-9855-185882d34389";
        fsType = "ext4";
      };

      swapDevices = [
        { device = "/dev/disk/by-uuid/bdb259b7-2ec4-4c0a-87a6-3f7aded7a089"; }
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
