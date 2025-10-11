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
        signing-keyID = "CE846FA3995B6C1B"; # rsa4096/0xCE846FA3995B6C1B
        encrypting-keyID = "7E0C416BDC3CF313"; # cv25519/0x7E0C416BDC3CF313
        auth-keygrip = "375BA8C9A760416B2C1BC3D49EED385E20454309"; # nistp521/0x4D62EF22B4ACD39A
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
