return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		{ "williamboman/mason.nvim", config = true },
		"williamboman/mason-lspconfig.nvim",
		"folke/neodev.nvim",
		"b0o/schemastore.nvim",
		"hrsh7th/cmp-nvim-lsp",
	},
	config = function()
		require("mason").setup({ ui = { border = "rounded" } })

		-- Load servers from separate config file
		local servers = require("plugins.lsp.servers")

		-- Add additional servers for web development
		servers.ts_ls = servers.ts_ls or {}
		servers.html = servers.html or {}
		servers.cssls = servers.cssls or {}

		require("mason-lspconfig").setup({
			ensure_installed = vim.tbl_keys(servers),
			automatic_installation = true,
		})

		local ok, win = pcall(require, "lspconfig.ui.windows")
		if ok and win and win.default_options then
			win.default_options.border = "single"
		end

		require("neodev").setup({}) -- before lua_ls

		local capabilities = require("cmp_nvim_lsp").default_capabilities()

		-- Setup each server - using fallback approach for compatibility
		for server, config in pairs(servers) do
			-- Try new vim.lsp.config API first, fallback to lspconfig if needed
			local success = pcall(function()
				if vim.lsp.config and vim.lsp.config[server] then
					vim.lsp.config[server] = vim.tbl_deep_extend("force", vim.lsp.config[server] or {}, {
						capabilities = capabilities,
						on_attach = require("plugins.lsp.on_attach").on_attach,
						settings = config.settings or nil,
						filetypes = config.filetypes or nil,
					})
				else
					error("vim.lsp.config not available")
				end
			end)

			-- Fallback to traditional lspconfig if new API fails
			if not success then
				require("lspconfig")[server].setup({
					capabilities = capabilities,
					on_attach = require("plugins.lsp.on_attach").on_attach,
					settings = config.settings or nil,
					filetypes = config.filetypes or nil,
				})
			end
		end

		vim.diagnostic.config({
			underline = true,
			virtual_text = true,
			signs = true,
			update_in_insert = false,
			severity_sort = true,
			float = { source = "always", style = "minimal", border = "rounded", header = "", prefix = "" },
		})
		for type, icon in pairs({ Error = " ", Warn = " ", Hint = "󰠠 ", Info = " " }) do
			local hl = "DiagnosticSign" .. type
			vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
		end
	end,
}
