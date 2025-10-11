{
  flake.modules = {
    nixos.dev =
      { pkgs, ... }:
      {
        environment.systemPackages = with pkgs; [
          clojure
          cljfmt
          leiningen
        ];
      };
    homeManager.dev = {

    };
  };
}
