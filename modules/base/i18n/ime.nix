{
  flake.modules = {
    homeManager.base =
      { pkgs, ... }:
      {
        i18n.inputMethod = {
          enable = true;
          type = "fcitx5";
          fcitx5 = {
            addons = with pkgs; [
              fcitx5-mozc
              fcitx5-gtk
            ];
            waylandFrontend = true;
            settings.addons.mozc.globalSection = {
              InitialMode = "Hiragana";
              InputState = "Follow Global Configuraton";
              Vertical = true;
              ExpandMode = "On Focus";
              PreeditCursorPositionAtBeginning = false;
              ExpandKey = "Control+Alt+H";
            };
          };
        };
      };
  };
}
