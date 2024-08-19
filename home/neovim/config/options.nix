{config, ...}:
{
  opts = {
    number = true;
    relativenumber = true;

    ruler = true;
    splitright = true;
    splitbelow = true;

    smarttab = true;
    expandtab = true;
    smartindent = true;
    autoindent = true;
    tabstop = 4;
    shiftwidth = 4;
    softtabstop = 4;

    autoread = true;
    title = true;
    termguicolors = true;
    hlsearch = true;
    hidden = true;
    encoding = "utf-8";
    fileencoding = "utf-8";
    showmode = false;
    clipboard = "unnamedplus";
    swapfile = false;
    laststatus = 3;
    scrolloff = 7;
    sidescrolloff = 8;
    wrap = false;

    cursorline = true;
    
    foldcolumn = "0";
    foldlevel = 99;
    foldlevelstart = 99;
    foldenable = true;
    undofile = true;
    undodir = "${config.home.homeDirectory}/.cache/nvim/undo";
    undolevels = 1000;
    undoreload = 10000;

    updatetime = 100;
  };
}
