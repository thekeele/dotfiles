require("nvim-treesitter.configs").setup({
  ensure_installed = { "vim", "help", "lua", "elixir", "heex", "eex" },
  highlight = { enable = true },
  autopairs = { enable = true },
  indent = { enable = true, disable = { "" } },
})
