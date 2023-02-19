-- to change the keymaps of lspconfig use init (https://www.lazyvim.org/plugins/lsp#%EF%B8%8F-customizing-lsp-keymaps)
-- NOTE: only for lspconfig, will define the keymaps here, else will be in lua.config.keymaps folder
return {
  -- LSP keymaps
  "neovim/nvim-lspconfig",
  init = function()
    local keys = require("lazyvim.plugins.lsp.keymaps").get()
    -- -- change a keymap
    -- keys[#keys + 1] = { "K", "<cmd>echo 'hello'<cr>" }
    -- -- disable a keymap
    -- keys[#keys + 1] = { "K", false }
    keys[#keys + 1] = { "<leader>c", false } -- NOTE: the whole "c" for lspconfig keymaps. will use "l" below as the new keymaps

    -- -- add a keymap
    keys[#keys + 1] = { "<leader>li", "<cmd>LspInfo<cr>", desc = "Lsp Info" }
    keys[#keys + 1] = { "<leader>lI", "<cmd>Mason<cr>", desc = "Mason Info" }

    -- keys[#keys + 1] = { "<leader>lq", vim.diagnostic.setloclist, desc = "Quickfix" }
    -- keys[#keys + 1] = { "<leader>lQ", "<cmd>Telescope quickfix<cr>", desc = "Telescope Quickfix" }

    -- NOTE: not working
    -- local format = require("lazyvim.plugins.lsp.format").format
    -- keys[#keys + 1] = { "<leader>lf", format, desc = "Format Document", has = "documentFormatting" }
    -- keys[#keys + 1] = { "<leader>lf", format, desc = "Format Range", mode = "v", has = "documentRangeFormatting" }

    keys[#keys + 1] = { "gl", vim.diagnostic.open_float, desc = "Line Diagnostics" }

    keys[#keys + 1] = {
      "<leader>ld",
      "<cmd>Telescope diagnostics bufnr=0 theme=get_ivy<cr>",
      desc = "Buffer Diagnostics",
    }

    keys[#keys + 1] = {
      "<leader>lD",
      "<cmd>Telescope diagnostics<cr>",
      desc = "Workspace Diagnostics",
    }

    keys[#keys + 1] = {
      "<leader>la",
      vim.lsp.buf.code_action,
      desc = "Code Action",
      mode = { "n", "v" },
      has = "codeAction",
    }

    -- keys[#keys + 1] = { "<leader>lr", vim.lsp.buf.rename, desc = "Rename var" }

    if require("lazyvim.util").has("inc-rename.nvim") then
      keys[#keys + 1] = {
        "<leader>lr",
        function()
          require("inc_rename")
          return ":IncRename " .. vim.fn.expand("<cword>")
        end,
        expr = true,
        desc = "Rename",
        has = "rename",
      }
    else
      keys[#keys + 1] = { "<leader>lr", vim.lsp.buf.rename, desc = "Rename", has = "rename" }
    end
  end,
}
