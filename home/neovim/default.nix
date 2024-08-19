{ pkgs, lib, ...}:
let
  fromGitHub = ref: repo: pkgs.vimUtils.buildVimPlugin {
    pname = "${lib.strings.sanitizeDerivationName repo}";
    version = ref;
    src = builtins.fetchGit {
      url = "https://github.com/${repo}.git";
      ref = ref;
    };
  };

  lazy-nix-helper = pkgs.vimUtils.buildVimPlugin {
    name = "lazy-nix-helper";
    src = pkgs.fetchFromGitHub {
      owner = "b-src";
      repo = "lazy-nix-helper.nvim";
      rev = "63b20ed071647bb492ed3256fbda709e4bfedc45";
      hash = "sha256-TBDZGj0NXkWvJZJ5ngEqbhovf6RPm9N+Rmphz92CS3Q=";
    };
  };

  treesitterWithGrammars = (pkgs.vimPlugins.nvim-treesitter.withPlugins (p: [
    p.bash
    p.comment
    p.css
    p.fish
    p.gitattributes
    p.gitignore
    p.json5
    p.json
    p.lua
    p.make
    p.markdown
    p.nix
    p.odin
    p.toml
    p.yaml
  ]));
in
{
  home.packages = with pkgs; [
    ripgrep
    fd
    lua-language-server
    ols
    clang_18
    nixd
  ];

  programs.neovim = with pkgs.vimPlugins; {
    enable = true;
    defaultEditor = true;
    viAlias = true;
    vimAlias = true;
    vimdiffAlias = true;
    plugins = [
      kanagawa-nvim
      lazy-nix-helper
    ];
  };

  home.file."./.config/nvim/" = {
    source = ./nvim;
    recursive = true;
  };

  home.file."./.local/share/nvim/nix/nvim-treesitter/" = {
    recursive = true;
    source = treesitterWithGrammars;
  };
}
