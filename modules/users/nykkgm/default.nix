{
  config,
  ...
}:
{
  flake = {
    meta.users = {
      nykkgm = {
        email = "nykkgm@pm.me";
        name = "Naoyuki Ikegami";
        username = "nykkgm";
        key = "CE846FA3995B6C1B"; # OpenPGP signature key
        keygrip = "375BA8C9A760416B2C1BC3D49EED385E20454309"; # OpenPGP authentication key
        authorizedKeys = [
        ];
      };
    };

    modules.nixos.nykkgm =
      { pkgs, ... }:
      {
        programs.fish.enable = true;

        users.users.nykkgm = {
          description = config.flake.meta.users.nykkgm.name;
          isNormalUser = true;
          createHome = true;
          extraGroups = [
            "audio"
            "input"
            "networkmanager"
            "sound"
            "tty"
            "wheel"
          ];
          shell = pkgs.fish;
          openssh.authorizedKeys.keys = config.flake.meta.users.nykkgm.authorizedKeys;
          initialPassword = "id";
        };

        nix.settings.trusted-users = [ config.flake.meta.users.nykkgm.username ];

        home-manager.users.nykkgm = {
          home.file = {
          };
        };
      };
  };
}
