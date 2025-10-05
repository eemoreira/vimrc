-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.8',
		-- or                            , branch = '0.1.x',
		requires = { { 'nvim-lua/plenary.nvim' } }
	}

	use("ellisonleao/gruvbox.nvim")

	use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })

	use("neovim/nvim-lspconfig")

    use("Shatur/neovim-ayu")

	use {
		'nvim-tree/nvim-tree.lua',
		requires = {
			'nvim-tree/nvim-web-devicons', -- optional
		},
	}

    use("github/copilot.vim")

    use("mason-org/mason.nvim")

    -- install without yarn or npm
    use({
        "iamcco/markdown-preview.nvim",
        run = function() vim.fn["mkdp#util#install"]() end,
    })

    use({"iamcco/markdown-preview.nvim", run = "cd app && npm install",
        setup = function()
            vim.g.mkdp_filetypes = { "markdown" }
        end,
        ft = { "markdown" },
    })

    use("chomosuke/typst-preview.nvim")

end)
