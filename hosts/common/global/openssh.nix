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
      PasswordAuthentication = false;
      PermitRootLogin = "no";

      StreamLocalBindUnlink = "yes";
      GatewayPorts = "clientspecified";
      AcceptEnv = "WAYLAND_DISPLAY";
      X11Forwarding = true;
    };
    hostKeys = [
      {
        path = "/persist/etc/ssh/ssh_host_ed25519_key";
        type = "ed25519";
      }
    ];
  };

  programs.ssh = {
    knownHosts = lib.genAttrs hosts (hostname: {
      publicKeyFile = ../../${hostname}/ssh_host_ed25519_key.pub;
    });
  };
}
