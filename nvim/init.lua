vim.opt.number = true -- show line numbers in gutter
vim.opt.mouse = 'a' -- enable using the mouse
vim.opt.ignorecase = true -- ignore case when searching
vim.opt.smartcase = true -- ignore uppercase unless it exists
vim.opt.hlsearch = false -- disable highlights from previous search
vim.opt.wrap = true -- wrap long lines to be always visible
vim.opt.breakindent = true -- preserve virtual line indent
vim.opt.tabstop = 2 -- number of spaces used for Tab
vim.opt.shiftwidth = 2 -- characters used to indent line
vim.opt.expandtab = false -- transform tabs into spaces

-- vim.keymap.set('n', '<space>w', '<cmd>write<cr>', {desc = 'Save'}) -- Space w to save file
vim.g.mapleader = ' ' -- used in the next line, can use ' ' ','
vim.keymap.set('n', '<leader>w', '<cmd>write<cr>') -- <leader> + w to save file

vim.keymap.set({'n', 'x'}, 'cp', '"+y') -- copy to clipboard
vim.keymap.set({'n', 'x'}, 'cv', '"+p') -- paste from clipboard
vim.keymap.set({'n', 'x'}, 'x', '"_x') -- modify x to delete etxt without changing internal registers
vim.keymap.set('n', '<leader>a', ':keepjumps normal! ggVG<cr>') -- select all in current buffer

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
  ---
  -- List of plugins
  ---
  {'folke/tokyonight.nvim'},
  {'nvim-lualine/lualine.nvim'},
})

vim.opt.termguicolors = true
vim.cmd.colorscheme('tokyonight')

require('lualine').setup({
  options = {
    icons_enabled = false,
    section_separators = '',
    component_separators = ''
  }
})