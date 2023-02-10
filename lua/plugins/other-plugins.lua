-- put all other plugins that do not need any major code setup

return {
  { "theprimeagen/harpoon", event = "VeryLazy" },
  { "nvim-treesitter/nvim-treesitter-context", event = "VeryLazy" },
  -- { "tpope/vim-surround", tag = "v2.2" }, -- uses mini.surround bundled with lazyVim
}
