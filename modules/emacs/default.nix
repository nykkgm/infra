{
  flake.modules = {
    homeManager.emacs =
      {
        inputs,
        pkgs,
        ...
      }:
      let
        tangle = inputs.org-babel.lib.tangleOrgBabel { languages = [ "emacs-lisp" ]; };
      in
      {
        programs.emacs = {
          enable = true;
          package = pkgs.emacs-pgtk;
        };

        home = {
          file = {
           ".emacs.d/init.el".text = tangle (builtins.readFile ./elisp/init.org);
           ".emacs.d/early-init.el".text = tangle (builtins.readFile ./elisp/early-init.org);
          };

          packages = with pkgs; [
            #emacs-lsp-booster
            #pinentry-emacs
          ];
        };
      };
  };
}
