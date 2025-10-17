{
  flake.modules = {
    homeManager.shell = {
      programs = {
        yazi = {
          enable = true;
          enableFishIntegration = true;
          settings = {
            mgr = {
              show_hidden = false;
              sort_by = "mtime";
              sort_dir_first = true;
              sort_reverse = true;
            };
          };
        };
      };
    };
  };
}
