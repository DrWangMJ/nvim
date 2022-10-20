local null_ls = require("null-ls")

null_ls.setup({
	sources = {
		null_ls.builtins.formatting.stylua,
		null_ls.builtins.formatting.black,
		null_ls.builtins.formatting.isort,
		null_ls.builtins.formatting.remark,
	},

	on_attach = function(client)
		-- NOTE: 如果想要禁止某种语言在save时format，可以添加判定
		-- if client.name == "xxx" then
		--
		-- end
		-- auto format when save file
		if client.server_capabilities.documentFormattingProvider then
			vim.cmd([[
            augroup LspFormatting
            autocmd! * <buffer>
            autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting()
            augroup END
            ]])
		end
	end,
})

local mason_null_ls = require("mason-null-ls")
mason_null_ls.setup({
	ensure_installed = { "stylua", "black", "remark" },
	automatic_installation = false,
})

-- mason_null_ls.setup_handlers {
--     function(source_name)
--       -- all sources with no handler get passed here
--     end,
--     stylua = function()
--       null_ls.register(null_ls.builtins.formatting.stylua)
--     end,
-- }
