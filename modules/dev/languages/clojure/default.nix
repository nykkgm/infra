{
  flake.modules = {
    nixos.dev =
      { pkgs, ... }:
      {
        environment.systemPackages = with pkgs; [
          clojure
          cljfmt
          leiningen
          clojure-lsp
        ];
      };
    homeManager.dev = {

    };
  };
}
