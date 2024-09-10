{config, lib, ...}: {
  imports = [
    ./global
    ./packages/cli
  ];

  home.homeDirectory = lib.mkForce "/Users/${config.home.username}";
}
