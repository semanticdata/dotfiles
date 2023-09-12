# dotfiles

- [GitHub](#GitHub)
- [Other Apps](#Other-Apps)
- [NeoVim](#NeoVim)
  - [Keybindings](#Keybindings)
  - [Plugins](#Plugins)

## GitHub

- [.gitattributes](.gitattributes)
- [.gitignore](.gitignore)
- [hugo](https://gohugo.io/) → [.gitignore](github/hugo.gitignore)
- [jekyll](https://jekyllrb.com/) → [.gitignore](github/jekyll.gitignore)
- [lua](https://www.lua.org/) → [.gitignore](github/lua.gitignore)
- [zola](https://www.getzola.org/) → [.gitignore](github/zola.gitignore)

## Other Apps

- [alacritty](https://github.com/alacritty/alacritty) → [Configuration](others/alacritty.yml)
- [mpv](https://mpv.io/) → [Configuration](others/mpv.toml)
- [Obsidian Publisher](https://github.com/ObsidianPublisher/obsidian-github-publisher) → [Configuration](others/obsidian-publisher.json)

## NeoVim

**Configuration** → [init.lua](nvim/init.lua)

**Sync from CLI** → `nvim --headless "+Lazy! sync" +qa`

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
  - `<leader>ff` = `<cmd>Telescope find_files<cr>`
  - `<leader>fg` = `<cmd>Telescope live_grep<cr>`
  - `<leader>fd` = `<cmd>Telescope diagnostics<cr>`
  - `<leader>fs` = `<cmd>Telescope current_buffer_fuzzy_find<cr>`
- Telescope (builtin)
  - `<leader>ff` = `builtin.find_files, {}`
  - `<leader>fg` = `builtin.live_grep, {}`
  - `<leader>fb` = `builtin.buffers, {}`
  - `<leader>fh` = `builtin.help_tags, {}`
- Normal Mode
  - `<C-q>` = `:q!<CR>`
  - `<F4>` = `:bd<CR>`
- Moving Vertically
  - `<C-d>` = `<C-d>zz`
  - `<C-u>` = `<C-u>zz`
  - `n` = `nzzzv`
  - `N` = `Nzzzv`
- Tab Navigation
  - `<S-Tab>` = `gT`
  - `<Tab>` = `gt`
  - `<silent <S-t>` = `:tabnew<CR>`
- Pane/Window Navigation
  - `<C-h>` = `<C-w>h`
  - `<C-j>` = `<C-w>j`
  - `<C-k>` = `<C-w>k`
  - `<C-l>` = `<C-w>l`
  - `<C-left>` = `<C-w>h`
  - `<C-down>` = `<C-w>j`
  - `<C-up>` = `<C-w>k`
  - `<C-right>` = `<C-w>l`
- Terminal
  - `<A-t>` = `:sp term://pwsh<cr>i`
  - `tv` = `:lcd %:p:h<CR>:vsp term://pwsh<CR>i`
  - `th` = `:lcd %:p:h<CR>:sp term://pwsh<CR>i`
  - `<Esc>` = `<C-\\><C-n>`
  - `:q!` `<C-\\><C-n>:q!<CR>`

### Plugins

| Author/Plugin                                                                                                 | Description |
| ------------------------------------------------------------------------------------------------------------- | ----------- |
| [akinsho/bufferline.nvim](https://github.com/akinsho/bufferline.nvim)                                         | .           |
| [akinsho/toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim)                                         | .           |
| [ap/vim-css-color](https://github.com/ap/vim-css-color)                                                       | .           |
| [editorconfig/editorconfig-vim](https://github.com/editorconfig/editorconfig-vim)                             | .           |
| [folke/tokyonight.nvim](https://github.com/folke/tokyonight.nvim)                                             | Theme       |
| [kyazdani42/nvim-tree.lua](https://github.com/kyazdani42/nvim-tree.lua)                                       | .           |
| [kyazdani42/nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons)                               | .           |
| [lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)                                         | .           |
| [lukas-reineke/indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)                 | .           |
| [numToStr/Comment.nvim](https://github.com/numToStr/Comment.nvim)                                             | .           |
| [nvim-lua/plenary.nvim](https://github.com/nvim-lua/plenary.nvim)                                             | .           |
| [nvim-lualine/lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)                                     | .           |
| [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)                             | .           |
| [nvim-treesitter/nvim-treesitter-textobjects](https://github.com/nvim-treesitter/nvim-treesitter-textobjects) | .           |
| [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)                         | .           |
| [ThePrimeagen/vim-be-good](https://github.com/ThePrimeagen/vim-be-good)                                       | .           |
| [tpope/vim-fugitive](https://github.com/tpope/vim-fugitive)                                                   | .           |
| [vim-telescope/telescope-fzf-native.nvim](https://github.com/vim-telescope/telescope-fzf-native.nvim)         | .           |
| [wellle/targets.vim](https://github.com/wellle/targets.vim)                                                   | .           |
