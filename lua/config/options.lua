-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

-- opt.winbar = "%=%m %f"
opt.cursorline = true
-- opt.cursorcolumn = true
opt.scrolloff = 10 -- minimal number of screen lines to keep above and below the cursor.
opt.sidescrolloff = 10 -- minimal number of screen lines to keep left and right of the cursor.
opt.guifont = "monospace:h17" -- the font used in graphical neovim applications
opt.writebackup = false -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
opt.swapfile = false -- creates a swapfile (i hate this thing, MUST BE FALSE!!!)
opt.hlsearch = true -- highlight all matches on previous search pattern
-- opt.showmode = false -- we don't need to see things like -- INSERT -- anymore
