-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
	use "wbthomason/packer.nvim"	        -- Packer can manage itself

	-- File Explorer
	use {
        'nvim-tree/nvim-tree.lua',          -- File Explorer
		requires = {
            'nvim-tree/nvim-web-devicons',  -- Show File Icon
		},
	}

	-- LSP
    use {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
    }

    -- Color Scheme
    use "rose-pine/neovim"

    -- keymaps navigation
    use "folke/which-key.nvim"

    -- Command Line Plugin
    use { "VonHeikemen/fine-cmdline.nvim",
        requires = {
            {"MunifTanjim/nui.nvim"}
        }
    }

    -- Coding Plugin
    use "numToStr/Comment.nvim"               -- Comment shortcut
    use "m4xshen/autoclose.nvim"              -- Auto Close Brackets
    use "lukas-reineke/indent-blankline.nvim" -- Show Indent Guide

    -- Terminal Plugin
    use { "akinsho/toggleterm.nvim", tag = "*", config = function()
        require("toggleterm").setup()
    end}
end)
