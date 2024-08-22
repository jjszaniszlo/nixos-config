{
  programs.zsh = {
    enable = true;
    shellAliases = {
      ll = "ls -l";
    };
    syntaxHighlighting.enable = true;
    autosuggestion.enable = true;

    oh-my-zsh = {
      enable = true;
      plugins = [
        "sudo"
        "vi-mode"
      ];
      theme = "robbyrussell";
    };
  };
}
