return {
  {
    "mfussenegger/nvim-dap",
    event = "VeryLazy",
    dependencies = {
      "rcarriga/nvim-dap-ui",
      "leoluz/nvim-dap-go",
      "Pocco81/dap-buddy.nvim",
      "theHamsta/nvim-dap-virtual-text",
      "nvim-telescope/telescope-dap.nvim",
    },
    config = function()
      require("config.dap").setup()
    end,
    -- cmd = "require'dap'.continue()" -- make it start when clicking the command for starting a dap
  },
  { "theHamsta/nvim-dap-virtual-text", event = "VeryLazy" },
  { "nvim-telescope/telescope-dap.nvim", event = "VeryLazy" },
  { "Pocco81/dap-buddy.nvim", branch = "dev", event = "VeryLazy" },
  { "leoluz/nvim-dap-go", event = "VeryLazy" },
  { "rcarriga/nvim-dap-ui", event = "VeryLazy" },
  {
    "folke/neodev.nvim",
    event = "VeryLazy",
    opts = {
      library = { plugins = { "nvim-dap-ui" }, types = true },
    },
    -- config = function()
    --   require("neodev").setup({
    --     library = { plugins = { "nvim-dap-ui" }, types = true },
    --   })
    -- end,
  },
}
