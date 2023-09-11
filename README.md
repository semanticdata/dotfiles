# dotfiles

## GitHub

- [.gitattributes](.gitattributes)
- [.gitignore](.gitignore)
- [hugo](github/hugo.gitignore)
- [jekyll](github/jekyll.gitignore)
- [lua](github/lua.gitignore)
- [zola](github/zola.gitignore)

## Obsidian

- [obsidian-publisher](obsidian-publisher.json)

## Other Apps

- [mpv player](mpv.toml)

## NeoVim

- [init.lua](nvim/init.lua)

### Keybindings

- `<leader>` = `<space>`
- Unsorted
  - `<leader>h` = `^`
  - `<leader>l` = `g_`
  - `<leader>a` = `:keepjumps normal! ggVG<cr>`
  - `gy` = `"+y`
  - `gp` = `"+p`
  - `x` = `"_x`
  - `<leader>e` = `<cmd>NvimTreeToggle<cr>`
- Commands
  - `<leader>w` = `<cmd>write<cr>`
  - `<leader>bq` = `<cmd>bdelete<cr>`
  - `<leader>bl` = `<cmd>buffer #<cr>`
  - `<F2>` = `<cmd>Lexplore<cr>`
  - `<space><space>` = `<F2>`
- Telescope
  - `<leader><space>` = `<cmd>Telescope buffers<cr>`
  - `<leader>?` = `<cmd>Telescope oldfiles<cr>`


- Standard
- Tab Navigation
- Pane/Window Navigation
- Terminal
  - `<A-t>` = `:sp term://pwsh<cr>i`
  - `tv` = `:lcd %:p:h<CR>:vsp term://pwsh<CR>i`
  - `th` = `:lcd %:p:h<CR>:sp term://pwsh<CR>i`
  - `<Esc>` = `<C-\\><C-n>`
  - `:q!` `<C-\\><C-n>:q!<CR>`

### Commands

**Sync from CLI**

```pwsh
nvim --headless "+Lazy! sync" +qa
```

### Plugins

- [folke/tokyonight.nvim](https://github.com/folke/tokyonight.nvim)
- [kyazdani42/nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons)
- [nvim-lualine/lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
- [akinsho/bufferline.nvim](https://github.com/akinsho/bufferline.nvim)
- [lukas-reineke/indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)
- [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [nvim-treesitter/nvim-treesitter-textobjects](https://github.com/nvim-treesitter/nvim-treesitter-textobjects)
- [numToStr/Comment.nvim](https://github.com/numToStr/Comment.nvim)
- [kyazdani42/nvim-tree.lua](https://github.com/kyazdani42/nvim-tree.lua)
- [nvim-lua/plenary.nvim](https://github.com/nvim-lua/plenary.nvim)
- [akinsho/toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim)
- [tpope/vim-fugitive](https://github.com/tpope/vim-fugitive)
- [lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- [editorconfig/editorconfig-vim](https://github.com/editorconfig/editorconfig-vim)
- [wellle/targets.vim](https://github.com/wellle/targets.vim)
- [ThePrimeagen/vim-be-good](https://github.com/ThePrimeagen/vim-be-good)
- [ap/vim-css-color](https://github.com/ap/vim-css-color)
- [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [vim-telescope/telescope-fzf-native.nvim](https://github.com/vim-telescope/telescope-fzf-native.nvim)
