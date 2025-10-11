{
  flake.modules = {
    homeManager.shell =
      { pkgs, ... }:
      {
        home.packages = with pkgs; [
          tldr
        ];
      };
  };
}
