{config, pkgs, lib, ...}:
{
        ### NVIDIA
        hardware.graphics.enable = true;
        nixpkgs.config.nvidia.acceptLicense = true;
        services.xserver.videoDrivers = [
#            "modesetting"
            "nvidia"
        ];
#        hardware.nvidia.package = config.boot.kernelPackages.nvidiaPackages.legacy_470;
#        hardware.nvidia.modesetting.enable = true;
        hardware.nvidia.open = false;
}