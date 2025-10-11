{
  flake.modules = {
    nixos."hosts/x1" =
      {
        inputs,
        ...
      }:
      {
        imports = [
          inputs.xremap.nixosModules.default
          {
            services.xremap = {
              withNiri = true;
              userName = "nykkgm";
              serviceMode = "system";
              config ={
                modmap = [
                  {
                    name = "Convert CapsLock to Left Control";
                    remap = {
                      CapsLock = "Ctrl_L";
                    };
                  }
                  {
                    name = "Convert Left Control to Henkan";
                    remap = {
                      Ctrl_L = "KEY_HENKAN";
                    };
                  }
                ];
              };
            };
          }
        ];
      };
  };
}
  
