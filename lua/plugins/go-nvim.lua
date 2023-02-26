-- NOTE: this go plugin is much better than vim-go by fatih as it uses the modern lua and by default integrated with nvim-lspconfig
-- no hassle with duplicate gopls server in memory
-- https://github.com/ray-x/go.nvim?ref=morioh.com&utm_source=morioh.com
return {
  "ray-x/go.nvim",
  dependencies = { -- optional packages
    "ray-x/guihua.lua",
    -- "neovim/nvim-lspconfig",
    -- "nvim-treesitter/nvim-treesitter",
  },
  config = function()
    require("go").setup()
  end,
  event = { "CmdlineEnter" },
  ft = { "go", "gomod" },
  -- build = ':lua require("go.install").update_all_sync()' -- if you need to install/update all binaries
}
