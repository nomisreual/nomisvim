{
  pkgs,
  lib,
  ...
}: let
  # to_lua = str: "lua << EOF\n${str}\nEOF\n";
in {
  # Import all your configuration modules here
  imports = [
    ./options.nix
    ./keymaps.nix
    ./autocmds.nix
    ./colorscheme.nix
    ./ftplugin.nix
    ./plugs
  ];

  # Set aliases for neovim
  viAlias = true;
  vimAlias = true;

  plugins.otter.enable = true;

  # trying neorg

  plugins.neorg = {
    enable = true;

    settings = {
      load = {
        "core.concealer" = {
          config = {
            icon_preset = "varied";
          };
        };
        "core.defaults" = {
          __empty = null;
        };
        "core.dirman" = {
          config = {
            workspaces = {
              home = "~/notes/home";
              work = "~/notes/work";
            };
          };
        };
      };
    };
  };

  extraPackages = with pkgs;
    [
      ripgrep # better grep
      fd # better find
      fzf # fuzzy finder

      # for some reason I need to pass them in here as well, already referenced in conform-nvim.nix
      alejandra # nix formatter
      stylua # lua formatter
    ]
    ++ lib.optionals stdenv.hostPlatform.isLinux [
      wl-clipboard # Wayland
      xclip # X11
    ]
    ++ lib.optionals stdenv.hostPlatform.isDarwin [
      pbgopy
    ];
}
