local fn = vim.fn

-- automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
    PACKER_BOOTSTRAP = fn.system {
        "git", "clone", "--depth", "1",
        "https://github.com/wbthomason/packer.nvim", install_path
    }
    print "Installing packer close and reopen Neovim..."
    vim.cmd [[ packadd packer.nvim ]]
end

-- autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
    print "Failed to require packer"
    return
end

-- have packer use a popup window
packer.init {
    display = {
        open_fn = function()
            return require("packer.util").float {border = "rounded"}
        end
    }
}

-- install your plugins here
return packer.startup(function(use)
    -- packer can manage itself
    use "wbthomason/packer.nvim"

    -- useful lua functions used ny lots of plugins
    use "nvim-lua/plenary.nvim"

    -- an implementation of the Popup API from vim in Neovim
    use "nvim-lua/popup.nvim"

    -- material colorscheme
    use "marko-cerovac/material.nvim"

    -- treesitter AST syntax highlighting
    use {"nvim-treesitter/nvim-treesitter", run = ":TSUpdate"}

	use {
  'VonHeikemen/lsp-zero.nvim',
  requires = {
    -- LSP Support
    {'neovim/nvim-lspconfig'},
    {'williamboman/mason.nvim'},
    {'williamboman/mason-lspconfig.nvim'},

    -- Autocompletion
    {'hrsh7th/nvim-cmp'},
    {'hrsh7th/cmp-buffer'}, -- provides suggestions based on the current file
    {'hrsh7th/cmp-path'}, -- gives completions based on the filesystem
    {'saadparwaiz1/cmp_luasnip'}, -- it shows snippets in the suggestions
    {'hrsh7th/cmp-nvim-lsp'}, -- show data send by the language server
    {'hrsh7th/cmp-nvim-lua'}, -- provides completions based on neovim's lua api 

    -- Snippets
    {'L3MON4D3/LuaSnip'}, -- snippet engine
    {'rafamadriz/friendly-snippets'}, -- provides the snippets
  }
}			
				
    -- telescope (fuzzy finder)
    use {'nvim-telescope/telescope.nvim', tag = '0.1.0', requires = {{'nvim-lua/plenary.nvim'}}}

    -- ability to format lua files with :call LuaFormat()
    use "andrejlevkovitch/vim-lua-format"

    -- Autopairs, integrates with both cmp and nvim-treesitter
    use "windwp/nvim-autopairs"

    -- display git decorations, diffs, blame line
    use {'lewis6991/gitsigns.nvim'}
								
    -- plugin to easily comment lines and blocks
    use {'numToStr/Comment.nvim'}

    -- adds "tabs" or a bufferline to easily switch between buffers / files
    use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}

    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if PACKER_BOOTSTRAP then require("packer").sync() end
end)
