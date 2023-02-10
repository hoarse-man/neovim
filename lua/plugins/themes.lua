return {
  -- { require("plugins.themes.vscode") },
  { require("plugins.themes.catppuccin") },
  -- { "ellisonleao/gruvbox.nvim" },

  -- Configure LazyVim to load a theme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
      -- colorscheme = "vscode",
    },
  },
}
