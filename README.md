# (neo)vimrc

My personal (neo)vim configuration files.


## Plugins

To install plugins, I use [vim-packer](https://github.com/wbthomason/packer.nvim).

To install the plugins, go to *lua/src/packer.lua* and run:

```vim
:PackerSync
```

## LSP
To mangage LSP servers, I use [mason.nvim](https://github.com/mason-org/mason.nvim).

To configure LSP servers, you can use [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig). I cloned this repo and used
it locally to change some default settings, which is not on this repository.
