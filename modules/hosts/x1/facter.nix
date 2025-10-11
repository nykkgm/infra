{
  flake.modules.nixos."hosts/x1" = {
    facter = {
      reportPath = ./facter.json;
    };
  };
}
