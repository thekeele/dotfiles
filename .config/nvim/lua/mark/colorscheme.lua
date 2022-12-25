-- enable termguicolors, used by some plugins
vim.opt.termguicolors = true

-- set material style
vim.g.material_style = "palenight"

local material = require("material")

material.setup({
  plugins = { -- Uncomment the plugins that you use to highlight them
    -- Available plugins:
    -- "dap",
    -- "dashboard",
    "gitsigns",
    -- "hop",
    -- "indent-blankline",
    -- "lspsaga",
    -- "mini",
    -- "neogit",
    "nvim-cmp",
    -- "nvim-navic",
    "nvim-tree",
    -- "nvim-web-devicons",
    -- "sneak",
    "telescope",
    -- "trouble",
    -- "which-key",
  },
  lualine_style = "stealth", -- Lualine style ( can be 'stealth' or 'default' )
})

-- enable colorscheme, must be last
vim.cmd("colorscheme material")
