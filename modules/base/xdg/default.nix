{
  flake.modules = {
    homeManager.base = {
      xdg = {
        enable = true;
        mime.enable = true;
        userDirs = {
          enable = false;
        };
      };
    };
  };
}
