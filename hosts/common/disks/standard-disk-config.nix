{device ? throw "Set this to your disk device, e.g. /dev/sda", ...}: {
  disko.devices = {
    disk.main = {
      inherit device;
      type = "disk";
      content = {
        type = "gpt";
        partitions = {
          ESP = {
            start = "1MiB";
            end = "1G";
            type = "EF00";
            content = {
              type = "filesystem";
              format = "vfat";
              mountpoint = "/boot";
            };
          };
          swap = {
            start = "1G";
            end = "33G";
            content = {
              type = "swap";
              resumeDevice = true;
              randomEncryption = true;
            };
          };
          root = {
            start = "33G";
            end = "100%";
            content = {
              type = "btrfs";
              extraArgs = ["-f"];
              subvolumes = {
                "@" = {};
                "@/root" = {
                  mountpoint = "/";
                  mountOptions = ["compress=zstd" "noatime"];
                };
                "@/home" = {
                  mountpoint = "/home";
                  mountOptions = ["compress=zstd"];
                };
                "@/nix" = {
                  mountpoint = "/nix";
                  mountOptions = ["compress=zstd" "noatime"];
                };
                "@/persist" = {
                  mountpoint = "/persist";
                  mountOptions = ["compress=zstd" "noatime"];
                };
                "@/var-lib" = {
                  mountpoint = "/var/lib";
                  mountOptions = ["compress=zstd" "noatime"];
                };
                "@/var-log" = {
                  mountpoint = "/var/log";
                  mountOptions = ["compress=zstd" "noatime"];
                };
                "@/var-tmp" = {
                  mountpoint = "/var/tmp";
                  mountOptions = ["compress=zstd" "noatime"];
                };
              };
            };
          };
        };
      };
    };
  };
}
