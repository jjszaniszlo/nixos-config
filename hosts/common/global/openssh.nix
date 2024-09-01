{
  outputs,
  lib,
  ...
}: let
  hosts =
    lib.attrNames outputs.nixosConfigurations
    ++ lib.attrNames outputs.darwinConfigurations;
in {
  services.openssh = {
    enable = true;
    settings = {
      PasswordAuthentication = true;
      # PermitRootLogin = "no";

      # StreamLocalBindUnlink = "yes";
      # GatewayPorts = "clientspecified";
      # AcceptEnv = "WAYLAND_DISPLAY";
      # X11Forwarding = true;
    };
  };
}
