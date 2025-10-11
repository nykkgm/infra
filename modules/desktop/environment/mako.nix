_: {
  flake.modules = {
    homeManager.desktop = _: {
      services.mako = {
        enable = true;
        settings = {
          actions = true;
          anchor = "top-right";

          background-color = "#1e1e2e";
          text-color = "#cdd6f4";
          border-color = "#74c7ec";
          progress-color = "over #313244";

          border-radius = 0;
          default-timeout = 0;
          font = "monospace 10";
          height = 100;
          width = 300;
          icons = true;
          ignore-timeout = false;
          layer = "top";
          margin = 10;
          markup = true;

        };
      };
    };
  };
}
