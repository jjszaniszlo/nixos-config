{config, lib, ...}: {
  imports = [
    ./global
    ./features/cli
  ];

  home.homeDirectory = lib.mkForce "/Users/${config.home.username}";
}
