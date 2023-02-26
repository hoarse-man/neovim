-- TODO: check the docs and create local var and return vim-go config
-- TODO: if it works, use its syntax highilghet instead of treesitter (disable treesitter for .go) and its lsp for go

-- NOTE: remove this plugin

-- local M = {}
--
-- M.options = {
--   -- disabling gopls from vim-go will not disable other function such as "vaf" "f" stands for func and will visual block entire func of go
--   go_gopls_enabled = 0, --NOTE: disable to use gopls from vim lsp only. lsp and vim-go produce double gopls on memory.
-- }
--
-- M.setup = function()
--   for k, v in pairs(M.options) do
--     vim.g[k] = v
--   end
-- end

return {
  -- {
  --   "fatih/vim-go",
  --   enabled = false,
  --   config = function()
  --     M.setup()
  --   end,
  --   event = "VeryLazy", -- use this instead to save 1-2ms to lazyload vim-go. and enabling go-vim commands unlike below which go-vim cannot call the commands at all.
  --   -- ft = { "*.go", "go.sum", "go.mod" }, -- cannot use vim-go commands using this way
  -- },
}
