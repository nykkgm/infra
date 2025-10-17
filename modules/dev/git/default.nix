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
            
            ignores = [
              ".direnv/"
              "result"
            ];
            
            signing = {
              signByDefault = true;
              format = "openpgp";
              key = topLevel.config.flake.meta.users.${config.home.username}.signing-keyID;
            };
          };
        };
      };
  };
}
