{pkgs, ...}: {
    environment.systemPackages = with pkgs; [
        vim
        wget
        zed-editor
        lsd
        nerd-fonts.symbols-only
        telegram-desktop
        git
        nixd
    ];

}
