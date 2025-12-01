{config, pkgs, ...}:
{
    programs.zsh = {
    		enable = true;
    		enableCompletion =  true;
    		autosuggestions.enable = true;
    		shellAliases = {
    			update = "sudo nixos-rebuild switch --flake .#ideapad-3-laptop";
    		};
    		histFile = "$HOME/.zsh_history";
    		ohMyZsh = {
    			enable = true;
    			plugins = ["git" "dirhistory" "history"];
        		theme = "kiwi";
    		};
      	};

}