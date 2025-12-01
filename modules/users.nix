{config, pkgs, ...}:
{
	users.users.ilase = {
		isNormalUser = true;
		description = "Ilya Kusukin";
		extraGroups = ["wheel" "docker" "networkmanager"];
		packages = with pkgs; [
            		tmux
            		gnomeExtensions.dash-to-dock
			jetbrains.idea-ultimate
		];
		shell = pkgs.zsh;
	};
}
