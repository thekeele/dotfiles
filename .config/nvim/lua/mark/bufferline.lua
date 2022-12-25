local bufferline = _G.require("bufferline")

bufferline.setup({
  options = {
    separator_style = "thin",
    diagnostics = "nvim_lsp",
    offsets = { { filetype = "NvimTree", text = "", padding = 1 } },
  },
})
