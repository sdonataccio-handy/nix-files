# Do not modify this file!  It was generated by ‘nixos-generate-config’
# and may be overwritten by future invocations.  Please make changes
# to /etc/nixos/configuration.nix instead.
{ config, lib, pkgs, ... }:

{
  imports =
    [ <nixpkgs/nixos/modules/installer/scan/not-detected.nix>
    ];

  boot.initrd.availableKernelModules = [ "xhci_hcd" "ehci_pci" "ahci" "usb_storage" ];
  boot.kernelModules = [ "kvm-intel" ];
  boot.extraModulePackages = [ ];

  fileSystems."/" =
    { device = "/dev/disk/by-uuid/8b1b16bb-69f4-4f42-9ba6-edf609ec9a35";
      fsType = "ext4";
    };

  fileSystems."/boot" =
    { device = "/dev/disk/by-uuid/a59a8d45-137c-47d6-a687-c696fb0e543d";
      fsType = "ext2";
    };

  swapDevices =
    [ { device = "/dev/disk/by-uuid/f10bd22f-479a-465c-bbb5-aa2745060ab4"; }
    ];

  nix.maxJobs = 8;
}
