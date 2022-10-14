local null_ls = require("null-ls")

null_ls.setup({
  sources = {
    null_ls.builtins.formatting.stylua,
  },
})

local mason_null_ls = require("mason-null-ls")

mason_null_ls.setup({
  ensure_installed = { "stylua", },
  automatic_installation = false,
})

mason_null_ls.setup_handlers {
    function(source_name)
      -- all sources with no handler get passed here
    end,
    stylua = function()
      null_ls.register(null_ls.builtins.formatting.stylua)
    end,
}
