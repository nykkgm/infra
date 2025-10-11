{
  flake.modules = {
    homeManager.viewer =
      { pkgs, ... }:
      {
        home.packages = [
          pkgs.xnviewmp
        ];
      };
  };
}
