{ pkgs, lib, config, inputs, ...}:
let
  fromGitHub = ref: repo: pkgs.vimUtils.buildVimPlugin {
    pname = "${lib.strings.sanitizeDerivationName repo}";
    version = ref;
    src = builtins.fetchGit {
      url = "https://github.com/${repo}.git";
      ref = ref;
    };
  };
  options = import ./config/options.nix;
in
{
  imports = [ 
    inputs.nixvim.homeManagerModules.nixvim
  ];
  
  programs.nixvim = {
    enable = true;
    defaultEditor = true;
    vimdiffAlias = true;
    inherit options;
  };
}
