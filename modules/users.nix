{config, pkgs, ...}:
{
	users.users.ilase = {
		isNormalUser = true;
		descriptiom = "Ilya Kusukin";
		extraGroups = ["wheel" "docker" "networkmanager"];
		packages = with pkgs; [

		];
		shell = pkgs.zsh;
	};
};
