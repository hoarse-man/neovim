return {
  {
    -- default which-key has no border and that's ugly when using transaparant background
    "folke/which-key.nvim",
    -- NOTE: use opts if in lazy.nvim if dont want to remove default settings from lazyvim
    -- else use config = func to overwrite everything.
    opts = {
      window = {
        border = "single", -- none, single, double, shadow
        position = "bottom", -- bottom, top
        margin = { 1, 0, 1, 0 }, -- extra window margin [top, right, bottom, left]
        padding = { 1, 1, 1, 1 }, -- extra window padding [top, right, bottom, left]
        winblend = 0,
      },
    },
  },
}
