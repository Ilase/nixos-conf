{pkgs, config, ...}: {
    boot = {
        plymouth ={
            enable = true;
            theme = "solar";
        };

    };
}