{
  flake.modules = {
    homeManager.base = {
      programs.neovim = {
        enable = true;
        vimAlias = true;
      };

      home.sessionVariables = {
        EDITOR = "nvim";
        VISUAL = "nvim";
      };
    };
  };
}
