{pkgs, ...}: {
  users.mutableUsers = false;
  users.users.jjszaniszlo = {
    isNormalUser = true;
    description = "John Szaniszlo";
    extraGroups = ["networkmanager" "wheel"];

    packages = with pkgs; [
      home-manager
    ];
  };
}
