topLevel: {
  flake.modules = {
    homeManager.base =
      { pkgs, config, ... }:
      {
        programs.gpg = {
          enable = true;
          settings = {
            # default-key = topLevel.config.flake.meta.users.${config.home.username}.key;
          };
        };

        home.packages = with pkgs; [
          gcr
          pinentry-emacs
        ];

        services.gpg-agent = {
          enable = true;
          enableSshSupport = true;
          sshKeys = [
            topLevel.config.flake.meta.users.${config.home.username}.keygrip
          ];
          pinentry.package = pkgs.pinentry-emacs;
          #pinentry.program = "pinentry-gtk-2";
          extraConfig = "allow-loopback-pinentry";
        };
      };
  };
}
