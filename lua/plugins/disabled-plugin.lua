-- all of my persnoal plugin that is disabled to prevent adding
if true then
  return {}
end

return {
  {
    "tummetott/reticle.nvim",
    enabled = false,
    event = "VeryLazy", -- lazyload the plugin if you like
    -- opts = {
    --   -- add options here if you want to overwrite defaults
    -- },
    config = function()
      require("reticle").setup({})
    end,
  },

  {
    "dcampos/nvim-snippy",
    enabled = false,
    dependencies = "dcampos/cmp-snippy",
    keys = {
      { "<Tab>", mode = { "i", "x" } },
      "g<Tab>",
    },
    ft = "snippets",
    cmd = { "SnippyEdit", "SnippyReload" },
    -- opts = {
    --     -- Put your `setup()` parameters here if needed.
    --     -- Snippy doesn't require any configuration by default,
    --     -- so you can remove this `opts = {}` part entirely.
    -- }
    config = function()
      require("snippy").setup({
        mappings = {
          is = {
            ["<Tab>"] = "expand_or_advance",
            ["<S-Tab>"] = "previous",
          },
          nx = {
            ["<leader>x"] = "cut_text",
          },
        },
      })
    end,
  },
}
