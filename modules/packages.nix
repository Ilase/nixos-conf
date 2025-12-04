{pkgs, ...}: {

	nixpkgs.config.permittedInsecurePackages = [
                "gradle-7.6.6"
	];

    environment.systemPackages = with pkgs; [
        vim
        wget
        zed-editor
        lsd
        nerd-fonts.symbols-only
        telegram-desktop
        git
        nixd
    	cargo
	rustc
	nodejs
	gcc
	clang
	cmake
    ];

}
