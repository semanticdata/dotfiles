-- ========================================================================== --
-- ==                           EDITOR SETTINGS                            == --
-- ========================================================================== --

vim.opt.number = true
vim.opt.mouse = 'a'
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = false
vim.opt.wrap = true
vim.opt.breakindent = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = false
vim.opt.background=dark
vim.opt.clipboard=unnamedplus
vim.opt.cursorline=true
vim.opt.hidden=true
vim.opt.inccommand=split
vim.opt.relativenumber=true
vim.opt.title=true
vim.opt.ttimeoutlen=0
vim.opt.wildmenu=true
vim.opt.ruler=true
vim.opt.shortmess=atI
vim.opt.showmode=true
vim.opt.incsearch=true
vim.opt.laststatus=2
vim.opt.showcmd=true
vim.opt.ttyfast=true
vim.opt.gdefault=true
vim.opt.encoding="utf-8"
vim.opt.scrolloff=3
vim.opt.backspace=indent,eol,start

-- ========================================================================== --
-- ==                             KEYBINDINGS                              == --
-- ========================================================================== --

-- Space as leader key
vim.g.mapleader = ' '

-- Shortcuts
vim.keymap.set({ 'n', 'x', 'o' }, '<leader>h', '^')
vim.keymap.set({ 'n', 'x', 'o' }, '<leader>l', 'g_')
vim.keymap.set('n', '<leader>a', ':keepjumps normal! ggVG<cr>')

-- Basic clipboard interaction
vim.keymap.set({ 'n', 'x' }, 'gy', '"+y') -- copy
vim.keymap.set({ 'n', 'x' }, 'gp', '"+p') -- paste

-- Delete text
vim.keymap.set({ 'n', 'x' }, 'x', '"_x')

-- Commands
vim.keymap.set('n', '<leader>w', '<cmd>write<cr>')
vim.keymap.set('n', '<leader>bq', '<cmd>bdelete<cr>')
vim.keymap.set('n', '<leader>bl', '<cmd>buffer #<cr>')
vim.keymap.set('n', '<F2>', '<cmd>Lexplore<cr>')
vim.keymap.set('n', '<space><space>', '<F2>', {
  remap = true
}) -- recursive mapping

-- Telescope Commands
vim.keymap.set('n', '<leader><space>', '<cmd>Telescope buffers<cr>')
vim.keymap.set('n', '<leader>?', '<cmd>Telescope oldfiles<cr>')
vim.keymap.set('n', '<leader>ff', '<cmd>Telescope find_files<cr>')
vim.keymap.set('n', '<leader>fg', '<cmd>Telescope live_grep<cr>')
vim.keymap.set('n', '<leader>fd', '<cmd>Telescope diagnostics<cr>')
vim.keymap.set('n', '<leader>fs', '<cmd>Telescope current_buffer_fuzzy_find<cr>')

-- Moving Vertically
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

-- Normal Mode
vim.keymap.set('n', '<C-q>', ':q!<CR>')
vim.keymap.set('n', '<F4>', ':bd<CR>')

-- Tabs Mappings
vim.keymap.set('n', '<S-Tab>', 'gT')
vim.keymap.set('n', '<Tab>', 'gt')
vim.keymap.set('n', '<silent> <S-t>', ':tabnew<CR>')

-- Pane Movements
vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set('n', '<C-l>', '<C-w>l')

vim.keymap.set('n', '<C-left>', '<C-w>h')
vim.keymap.set('n', '<C-down>', '<C-w>j')
vim.keymap.set('n', '<C-up>', '<C-w>k')
vim.keymap.set('n', '<C-right>', '<C-w>l')

-- Terminal
vim.keymap.set('n', '<A-t>', ':sp term://pwsh<CR>i')
vim.keymap.set('n', 'tv', ':lcd %:p:h<CR>:vsp term://pwsh<CR>i')
vim.keymap.set('n', 'th', ':lcd %:p:h<CR>:sp term://pwsh<CR>i')

-- Terminal go back to normal mode
vim.keymap.set('n', '<Esc>', '<C-\\><C-n>')
vim.keymap.set('n', ':q!', '<C-\\><C-n>:q!<CR>')

-- NVIM-TREE
vim.keymap.set('n', '<leader>e', '<cmd>NvimTreeToggle<cr>')

-- ========================================================================== --
-- ==                               COMMANDS                               == --
-- ========================================================================== --

vim.api.nvim_create_user_command('ReloadConfig', 'source $MYVIMRC', {})

local group = vim.api.nvim_create_augroup('user_cmds', { clear = true })

vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight on yank',
  group = group,
  callback = function()
    vim.highlight.on_yank({ higroup = 'Visual', timeout = 200 })
  end,
})

vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'help', 'man' },
  group = group,
  command = 'nnoremap <buffer> q <cmd>quit<cr>'
})

-- ========================================================================== --
-- ==                               PLUGINS                                == --
-- ========================================================================== --

local lazy = {}

function lazy.install(path)
  if not vim.loop.fs_stat(path) then
    print('Installing lazy.nvim....')
    vim.fn.system({
      'git',
      'clone',
      '--filter=blob:none',
      'https://github.com/folke/lazy.nvim.git',
      '--branch=stable', -- latest stable release
      path,
    })
  end
end

function lazy.setup(plugins)
  -- You can "comment out" the line below after lazy.nvim is installed
  lazy.install(lazy.path)

  vim.opt.rtp:prepend(lazy.path)
  require('lazy').setup(plugins, lazy.opts)
end

lazy.path = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
lazy.opts = {}

lazy.setup({
  { 'folke/tokyonight.nvim' },
  { 'kyazdani42/nvim-web-devicons' },
  { 'nvim-lualine/lualine.nvim' },
  { 'akinsho/bufferline.nvim' },
  { 'lukas-reineke/indent-blankline.nvim' },
  { 'nvim-treesitter/nvim-treesitter' },
  { 'nvim-treesitter/nvim-treesitter-textobjects' },
  { 'numToStr/Comment.nvim' },
  { 'kyazdani42/nvim-tree.lua' },
  { 'nvim-lua/plenary.nvim' },
  { 'akinsho/toggleterm.nvim' },
  { 'tpope/vim-fugitive' },
  { 'lewis6991/gitsigns.nvim' },
  { 'editorconfig/editorconfig-vim' },
  { 'nvim-telescope/telescope.nvim' },
  -- {'tpope/vim-surround'}, -- manipulate surrounding patterns '"`<[{(' -- not configured
  -- {'nvim-telescope/telescope-fzf-native.nvim'}, -- not configured, needs c compiler
  { 'wellle/targets.vim' },
  { 'ThePrimeagen/vim-be-good' },
  { 'ap/vim-css-color' },
})

-- ========================================================================== --
-- ==                         PLUGIN CONFIGURATION                         == --
-- ========================================================================== --

---
-- COLORSCHEME
---
vim.opt.termguicolors = true
vim.cmd.colorscheme('tokyonight')

---
-- LUALINE.nvim (statusline)
---
vim.opt.showmode = false
require('lualine').setup({
  options = {
    icons_enabled = true,
    theme = 'tokyonight',
    component_separators = '|',
    section_separators = '',
    disabled_filetypes = {
      statusline = { 'NvimTree' }
    }
  }
})

---
-- NETRW (file browser)
---
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25
vim.g.netrw_browse_split = 4
vim.g.netrw_altv = 1
vim.g.netrw_keepdir = 0
vim.g.netrw_localcopydircmd = 'cp -r'

---
-- BUFFERLINE
---
require('bufferline').setup({
  options = {
    mode = 'buffers',
    offsets = { {
      filetype = 'NvimTree'
    } }
  },
  highlights = {
    buffer_selected = {
      italic = false
    },
    indicator_selected = {
      fg = {
        attribute = 'fg',
        highlight = 'Function'
      },
      italic = false
    }
  }
})

---
-- INDENT-BLANKLINE
---
require('indent_blankline').setup({
  char = '▏',
  show_trailing_blankline_indent = false,
  show_first_indent_level = false,
  use_treesitter = true,
  show_current_context = false
})

---
-- TREESITTER
---
require('nvim-treesitter.configs').setup({
  highlight = {
    enable = false
  },
  ensure_installed = {
    'javascript',
    'vim',
    'html',
    'css',
    'lua',
    -- 'typescript',
    -- 'tsx',
    -- 'json',
  },
})

---
-- TREESITTER-TEXTOBJECTS-MODULES
---
require('nvim-treesitter.configs').setup({
  highlight = {
    enable = true,
  },
  textobjects = {
    select = {
      enable = true,
      lookahead = true,
      keymaps = {
        ['af'] = '@function.outer',
        ['if'] = '@function.inner',
        ['ac'] = '@class.outer',
        ['ic'] = '@class.inner',
      }
    },
  },
  ensure_installed = {
    --- parsers....
  },
})

---
-- NVIM-TREE
---
require('nvim-tree').setup({
  hijack_cursor = false,
  on_attach = function(bufnr)
    local bufmap = function(lhs, rhs, desc)
      vim.keymap.set('n', lhs, rhs, { buffer = bufnr, desc = desc })
    end

    -- See :help nvim-tree.api
    local api = require('nvim-tree.api')

    bufmap('L', api.node.open.edit, 'Expand folder or go to file')
    bufmap('H', api.node.navigate.parent_close, 'Close parent folder')
    bufmap('gh', api.tree.toggle_hidden_filter, 'Toggle hidden files')
  end
})

---
-- TOGGLETERM
---
require('toggleterm').setup({
  open_mapping = '<C-g>',
  direction = 'horizontal',
  shade_terminals = true,
  shell = "pwsh",
})

---
-- GITSIGNS
---
require('gitsigns').setup({
  signs = {
    add = { text = '▎' },
    change = { text = '▎' },
    delete = { text = '➤' },
    topdelete = { text = '➤' },
    changedelete = { text = '▎' },
  }
})

---
-- COMMENT.NVIM
---
require('Comment').setup({})

---
-- TELESCOPE-FZF
---
-- require('telescope').load_extension('fzf')
