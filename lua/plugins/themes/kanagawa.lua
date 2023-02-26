local myColor = {
  -- fujiWhite = "#40E0D0", -- variable
  fujiGray = "#4d4b49", -- comments
  oniViolet = "#BF026D", -- func, defer etc
  sakuraPink = "#f27e1f", -- number
  springBlue = "#b9fad7", -- nil, require, builtin func, and indent line
  peachRed = "#aa58ed", -- return and exception handling
}

return {
  "rebelot/kanagawa.nvim",
  lazy = false, -- make sure we load this during startup if it is your main colorscheme
  priority = 1000, -- make sure to load this before all the other start plugins
  config = function()
    -- Default options:
    require("kanagawa").setup({
      undercurl = true, -- enable undercurls
      commentStyle = { italic = true },
      functionStyle = {},
      keywordStyle = { italic = true },
      statementStyle = { bold = true },
      typeStyle = { italic = true },
      variablebuiltinStyle = {},
      specialReturn = true, -- special highlight for the return keyword
      specialException = true, -- special highlight for exception handling keywords
      transparent = true, -- do not set background color
      dimInactive = false, -- dim inactive window `:h hl-NormalNC`
      globalStatus = false, -- adjust window separators highlight for laststatus=3
      terminalColors = true, -- define vim.g.terminal_color_{0,17}
      colors = myColor,
      overrides = {},
      theme = "default", -- Load "default" theme or the experimental "light" theme
    })
  end,
}
