{
  pkgs,
  config,
  ...
}: let
  ifTheyExist = groups: builtins.filter (group: builtins.hasAttr group config.users.groups) groups;
in {
  users.users.jjszaniszlo = {
    isNormalUser = true;
    description = "John Szaniszlo";
    shell = pkgs.zsh;
    extraGroups = ifTheyExist ["networkmanager" "wheel"];

    packages = with pkgs; [
      home-manager
    ];
  };
}
