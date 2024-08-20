{pkgs, config, ...}: 
let
  ifTheyExist = groups: builtins.filter (group: builtins.hasAttr group config.users.groups) groups;
in
{
  users.users.jjszaniszlo = {
    isNormalUser = true;
    description = "John Szaniszlo";
    extraGroups = ifTheyExist ["networkmanager" "wheel"];

    packages = with pkgs; [
      home-manager
    ];
  };
}
