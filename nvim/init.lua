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

-- local builtin = require('telescope.builtin')
-- vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
-- vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
-- vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
-- vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})

-- ========================================================================== --
-- ==                               COMMANDS                               == --
-- ========================================================================== --

vim.api.nvim_create_user_command('ReloadConfig', 'source $MYVIMRC', {})

local group = vim.api.nvim_create_augroup('user_cmds', {
    clear = true
})

vim.api.nvim_create_autocmd('TextYankPost', {
    desc = 'Highlight on yank',
    group = group,
    callback = function()
        vim.highlight.on_yank({
            higroup = 'Visual',
            timeout = 200
        })
    end
})

vim.api.nvim_create_autocmd('FileType', {
    pattern = {'help', 'man'},
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
        vim.fn.system({'git', 'clone', '--filter = blob:none', 'https://github.com/folke/lazy.nvim.git',
                       '--branch = stable', -- latest stable release
        path})
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

lazy.setup({ ---
-- List of plugins
---
{'folke/tokyonight.nvim'},
{'kyazdani42/nvim-web-devicons'},
{'nvim-lualine/lualine.nvim'},
{'akinsho/bufferline.nvim'},
{'lukas-reineke/indent-blankline.nvim'},
{'nvim-treesitter/nvim-treesitter'},
{'nvim-treesitter/nvim-treesitter-textobjects'},
{'wellle/targets.vim'},
{'numToStr/Comment.nvim'},
-- {'tpope/vim-surround'}, -- manipulate surrounding patterns '"`<[{('
{'kyazdani42/nvim-tree.lua'},
{'nvim-lua/plenary.nvim'},
{'nvim-telescope/telescope.nvim'},
-- {'nvim-telescope/telescope-fzf-native.nvim'},
})

-- ========================================================================== --
-- ==                         PLUGIN CONFIGURATION                         == --
-- ========================================================================== --

---
-- Colorscheme
---
vim.opt.termguicolors = true
vim.cmd.colorscheme('tokyonight')

---
-- lualine.nvim (statusline)
---
vim.opt.showmode = false
require('lualine').setup({
    options = {
        theme = 'tokyonight',
        icons_enabled = true,
        component_separators = '|',
        section_separators = '',
        disabled_filetypes = {
            statusline = {'NvimTree'}
        }
    }
})

---
-- NETRW
---
vim.g.netrw_banner = 0 -- hides banner
vim.g.netrw_winsize = 30 -- resize the window
vim.g.netrw_liststyle = 3
vim.g.netrw_browse_split = 4
vim.g.netrw_altv = 1
vim.g.netrw_keepdir = 0
vim.g.netrw_localcopydircmd = 'cp -r'

---
-- bufferline
---
require('bufferline').setup({
    options = {
        mode = 'buffers',
        offsets = {{
            filetype = 'NvimTree'
        }}
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
-- indent-blankline
---
require('indent_blankline').setup({
    char = '▏',
    show_trailing_blankline_indent = false,
    show_first_indent_level = false,
    use_treesitter = true,
    show_current_context = false
})

---
-- treesitter
---
require('nvim-treesitter.configs').setup({
    highlight = {
        enable = true
    },
    -- ensure_installed = {
    --     'javascript',
    --     'typescript',
    --     'tsx',
    --     'css',
    --     'json',
    --     'lua',
    --   },
})

---
-- treesitter-textobjects-modules
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
-- comment.nvim
---
require('Comment').setup({})

---
-- nvim-tree
---
require('nvim-tree').setup({
    hijack_cursor = false,
    on_attach = function(bufnr)
      local bufmap = function(lhs, rhs, desc)
        vim.keymap.set('n', lhs, rhs, {buffer = bufnr, desc = desc})
      end

      -- See :help nvim-tree.api
      local api = require('nvim-tree.api')

      bufmap('L', api.node.open.edit, 'Expand folder or go to file')
      bufmap('H', api.node.navigate.parent_close, 'Close parent folder')
      bufmap('gh', api.tree.toggle_hidden_filter, 'Toggle hidden files')
    end
  })

vim.keymap.set('n', '<leader>e', '<cmd>NvimTreeToggle<cr>')

-- require('telescope').load_extension('fzf')