local bufferline = require("bufferline")

bufferline.setup({
	options = {
		separator_style = "thick",
		diagnostics = "nvim_lsp",
	},
})
