{
  config,
  ...
}:
{
  flake.modules.nixos."hosts/x670".imports =
    # Import the nixos modules for the host `x670`.
    with config.flake.modules.nixos;
    [
      # Modules
      base
      bluetooth
      desktop
      #displaylink
      dev
      facter
      fwupd
      openssh
      shell
      sound
      #vpn

      # Users
      root
      nykkgm
    ]
    # Specific Home-Manager modules
    ++ [
      {
        home-manager.users.nykkgm.imports = with config.flake.modules.homeManager; [
          base
          cloud
          desktop
          dev
          emacs
          #email
          facter
          #messaging
          #games
          shell
          viewer
          #work
        ];
      }
    ];
}
