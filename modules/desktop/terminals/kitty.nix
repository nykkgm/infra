_: {
  flake.modules = {
    homeManager.desktop = _: {
      programs.kitty = {
        enable = true;
        font = {
          name = "PlemolJP Console NF";
          size = 13;
        };
        settings = {
          scrollback_lines = 10000;
          enable_audio_bell = false;

          cursor_shape = "block";
          cursor_blink_interval = 0.5;
          cursor_stop_blinking_after = 15.0;

          term = "xterm-kitty";

          # modus-vivendi-tinted
          foreground = "#ffffff";
          background = "#0d0e1c";
          selection_foreground = "#ffffff";
          selection_background = "#555a66";

          cursor = "#ff66ff";
          cursor_text_color = "#000000";

          # black
          color0 = "#ffffff";
          color8 = "#989898";

          # red
          color1 = "#ff5f59";
          color9 = "#ef8386";

          # green
          color2 = "#44bc44";
          color10 = "#99ca9f";

          # yellow
          color3 = "#d0bc00";
          color11 = "#d2b580";

          # blue
          color4 = "#2fafff";
          color12 = "#82b0ec";

          # magenta
          color5 = "#feacd0";
          color13 = "#caa6df";

          # cyan
          color6 = "#00d3d0";
          color14 = "#9ac8e0";

          # white
          color7 = "#0d0e1c";
          color15 = "#1d2235";

          # Optional: border, tab bar, etc.
          active_border_color = "#89b4fa";
          inactive_border_color = "#313244";
          active_tab_foreground = "#1e1e2e";
          active_tab_background = "#cba6f7";
          inactive_tab_foreground = "#cdd6f4";
          inactive_tab_background = "#181825";
        };
      };
    };
  };
}
