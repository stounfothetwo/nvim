return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  keys = require("mappings").lspconfig,
  dependencies = {
    require("plugins.mason"),
  },
  config = function()
    local lspconfig = require("lspconfig")

    lspconfig.pyright.setup({})
    lspconfig.rust_analyzer.setup({})
    lspconfig.lua_ls.setup({
      settings = {
        Lua = {
          diagnostics = {
            globals = { "vim" },
          },
        },
      },
    })
  end,
}
