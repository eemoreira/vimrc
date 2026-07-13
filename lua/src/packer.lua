-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use("wbthomason/packer.nvim")

    use {
        'nvim-telescope/telescope.nvim',
        brach = 'master',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }


    use {
        "nvim-treesitter/nvim-treesitter",
        tag = "v0.10.0",
        branch = "main",
        run = ":TSUpdate",
    }

    -- colorschemes
    use("ellisonleao/gruvbox.nvim")
    use("Shatur/neovim-ayu")
    use("catppuccin/nvim")
    use("rebelot/kanagawa.nvim")
    use("projekt0n/github-nvim-theme")

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

    use("aznhe21/actions-preview.nvim")

    use("chomosuke/typst-preview.nvim")

    use("xiyaowong/transparent.nvim")
end)
