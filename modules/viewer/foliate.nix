{
  flake.modules = {
    homeManager.viewer = {
      programs.foliate = {
        enable = true;
      };
    };
  };
}
