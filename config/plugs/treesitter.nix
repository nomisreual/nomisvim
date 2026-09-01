{
  plugins.treesitter = {
    enable = true;
    indent = {
      enable = true;
      disable = ["ruby"];
    };
    settings = {
      auto_install = false;
      highlight = {
        enable = true;
        additional_vim_regex_highlighting = ["ruby"];
      };
    };
  };
}
