{config, pkgs, lib, ...}:
{
        hardware.graphics.enable = true;
        ### NVIDIA
        nixpkgs.config.nvidia.acceptLicense = true;
        hardware.opengl.enable = true;
        services.xserver.videoDrivers = [
            "modesetting"
            "nvidia"
        ];
        hardware.nvidia.package = config.boot.kernelPackages.nvidiaPackages.legacy_470;
        hardware.nvidia.modesetting.enable = true;
}