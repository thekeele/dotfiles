-- example of how to set mason settings, must be before lsp zero
require("mason.settings").set({
	ui = {
		border = "rounded",
	},
})

local lsp = require("lsp-zero")

-- recommended presents
lsp.set_preferences({
	suggest_lsp_servers = true,
	setup_servers_on_start = true,
	set_lsp_keymaps = true,
	configure_diagnostics = true,
	cmp_capabilities = true,
	manage_nvim_cmp = true,
	call_servers = "local",
	sign_icons = {
		error = "✘",
		warn = "▲",
		hint = "⚑",
		info = "",
	},
})

-- installs these servers at startup
lsp.ensure_installed({
	"sumneko_lua",
	"elixirls",
})

-- fix undefined global 'vim'
lsp.configure("sumneko_lua", {
	settings = {
		Lua = {
			diagnostics = {
				globals = { "vim" },
			},
		},
	},
})

-- neovim specific completions
lsp.nvim_workspace()

-- do the thing
lsp.setup()

-- set lsp diagnostics
vim.diagnostic.config({
	virtual_text = true,
	signs = true,
	update_in_insert = false,
	underline = true,
	severity_sort = false,
	float = true,
})
