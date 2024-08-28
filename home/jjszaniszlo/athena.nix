{
  outputs,
  ...
}: {
  imports = [
    ./global
    ./packages/cli
    ./packages/desktop/hyprland
    ./packages/gaming
    ./packages/programs
  ] ++ (builtins.attrValues outputs.homeManagerModules);

  monitors = [
    {
      name = "DP-1";
      width = 3840;
      height = 2160;
      refresh-rate = 120;
      workspace = "1";
      primary = true;
    }
    {
      name = "DP-3";
      width = 2560;
      height = 1440;
      refresh-rate = 165;
      position = "auto-right";
      transform = {
        enable = true;
        value = 3;
      };
      workspace = "2";
    }
  ];

  systemd.user.startServices = "sd-switch";
}
