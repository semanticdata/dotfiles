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

-- ========================================================================== --
-- ==                             KEYBINDINGS                              == --
-- ========================================================================== --

vim.g.mapleader = ' ' -- Space as leader key

-- Shortcuts
vim.keymap.set({'n', 'x', 'o'}, '<leader>h', '^')
vim.keymap.set({'n', 'x', 'o'}, '<leader>l', 'g_')
vim.keymap.set('n', '<leader>a', ':keepjumps normal! ggVG<cr>')

-- Basic clipboard interaction
vim.keymap.set({'n', 'x'}, 'cp', '"+y') -- copy
vim.keymap.set({'n', 'x'}, 'cv', '"+p') -- paste

-- Delete text
vim.keymap.set({'n', 'x'}, 'x', '"_x') -- delete text without changing internal registers

-- Commands
vim.keymap.set('n', '<leader>w', '<cmd>write<cr>') -- <leader> + w to save file
vim.keymap.set('n', '<leader>a', ':keepjumps normal! ggVG<cr>') -- select all in current buffer
vim.keymap.set('n', '<leader>bq', '<cmd>bdelete<cr>')
vim.keymap.set('n', '<leader>bl', '<cmd>buffer #<cr>')
vim.keymap.set('n', '<F2>', '<cmd>Lexplore<cr>')
vim.keymap.set('n', '<space><space>', '<F2>', {remap = true}) -- recursive mapping

-- ========================================================================== --
-- ==                               PLUGINS                                == --
-- ========================================================================== --

local lazy  =  {}

function lazy.install(path)
  if not vim.loop.fs_stat(path) then
    print('Installing lazy.nvim....')
    vim.fn.system({
      'git',
      'clone',
      '--filter = blob:none',
      'https://github.com/folke/lazy.nvim.git',
      '--branch = stable', -- latest stable release
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

lazy.path  =  vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
lazy.opts  =  {}

lazy.setup({
  ---
  -- List of plugins
  ---
  {'folke/tokyonight.nvim'},
  {'kyazdani42/nvim-web-devicons'},
  {'nvim-lualine/lualine.nvim'},
})

-- ========================================================================== --
-- ==                         PLUGIN CONFIGURATION                         == --
-- ========================================================================== --

---
-- Colorscheme
---
vim.opt.termguicolors  =  true
vim.cmd.colorscheme('tokyonight')

---
-- lualine.nvim (statusline)
---
vim.opt.showmode = false
require('lualine').setup({
  options = {
    icons_enabled = false,
    theme = 'tokyonight',
    component_separators = '|',
    section_separators = '',
  },
})

-- NETRW
vim.g.netrw_banner = 0 -- hides banner
vim.g.netrw_winsize = 30 -- resize the window
vim.g.netrw_liststyle = 3
vim.g.netrw_browse_split = 4
vim.g.netrw_altv = 1
vim.g.netrw_keepdir = 0
vim.g.netrw_localcopydircmd = 'cp -r'

local augroup = vim.api.nvim_create_augroup('user_cmds', {clear = true})

vim.api.nvim_create_autocmd('FileType', {
  pattern = {'help', 'man'},
  group = augroup,
  desc = 'Use q to close the window',
  command = 'nnoremap <buffer> q <cmd>quit<cr>'
})

vim.api.nvim_create_autocmd('TextYankPost', {
  group = augroup,
  desc = 'Highlight on yank',
  callback = function(event)
    vim.highlight.on_yank({higroup = 'Visual', timeout = 200})
  end
})

local load = function(mod)
  package.loaded[mod] = nil
  require(mod)
end

load('user.settings')
load('user.keymaps')