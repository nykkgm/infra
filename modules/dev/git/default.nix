topLevel: {
  flake.modules = {
    homeManager.dev =
      { config, ... }:
      {
        programs = {
          git = {
            enable = true;
            userName = topLevel.config.flake.meta.users.${config.home.username}.name;
            userEmail = topLevel.config.flake.meta.users.${config.home.username}.email;
            signing = {
              signByDefault = true;
              format = "openpgp";
              inherit (topLevel.config.flake.meta.users.${config.home.username}) key;
            };
            ignores = [
              ".direnv"
            ];
          };
        };
      };
  };
}
