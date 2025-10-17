{
  inputs,
  ...
}:
{
  flake.modules = {
    nixos.desktop =
      { pkgs, ... }:
      {
        services.greetd = {
          enable = true;
          settings = {
            default_session = {
              command = "${pkgs.tuigreet}/bin/tuigreet \
          --time --time-format '%I:%M %p | %a • %h | %F' \
          --cmd 'niri'";
              user = "greeter";
            };
          };
        };

        users.users.greeter = {
          isNormalUser = false;
          description = "greetd greeter user";
          extraGroups = [
            "video"
            "audio"
          ];
          linger = true;
        };

        environment.systemPackages = with pkgs; [
          tuigreet
        ];
      };

    homeManager.desktop = _: {
      nixpkgs = {
        config.allowUnfree = true;
        overlays = [
          inputs.self.overlays.default
        ];
      };
    };
  };
}
