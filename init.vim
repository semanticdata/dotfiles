" Options
set background=dark " apply the color set for dark screens
set clipboard=unnamedplus " enables the clipboard between Vim/Neovim and other applications
set cursorline " highlights the current line in the editor
set completeopt=noinsert,menuone,noselect " modifies the auto-complete menu to behave more like an IDE
set hidden " hide unused buffers
set inccommand=split "  show replacements in a split screen, before applying to the file
set mouse=a " allows the use of the mouse in the editor
set number " shows line numbers
set relativenumber " show line numbers starting from the current one
set splitbelow splitright " changes split screen behavior
set title " show the file title
set ttimeoutlen=0 " time in milliseconds to run commands
set wildmenu " shows a more advanced menu for auto-completion suggestions

set expandtab " transforms tabs into spaces
set shiftwidth=2 " number of spaces for indentation
set tabstop=2 " number of spaces for tabs

set noerrorbells " Disable error bells
set nostartofline " Don’t reset cursor to start of line when moving around.
set ruler " Show the cursor position
set shortmess=atI " Don’t show the intro message when starting Vim
set showmode " Show the current mode
set hlsearch " Highlight searches
set ignorecase " Ignore case of searches
set incsearch " Highlight dynamically as pattern is typed
set laststatus=2 " Always show status line
set showcmd " Show the (partial) command as it’s being typed
set nocompatible " Make Vim more useful
set ttyfast " Optimize for fast terminal connections
set gdefault " Add the g flag to search/replace by default
set encoding=utf-8 nobomb " Use UTF-8 without BOM
set scrolloff=3 " Start scrolling three lines before the horizontal window border

filetype plugin indent on
syntax on " automatic syntax support for open files
set t_Co=256 " enable 256 colors on the terminal

" True color if available
let term_program=$TERM_PROGRAM
if $TERM !=? 'xterm-256color'
  set termguicolors
endif

" Italics
let &t_ZH="\e[3m"
let &t_ZR="\e[23m"

" File browser
let g:netrw_banner=0 " hides the top banner that appears by default
let g:netrw_liststyle=4 "  change the display of files
let g:netrw_browse_split=4 " changes how files are opened
let g:netrw_altv=1 " switches the NetRW display to the left
let g:netrw_winsize=25 " limits window size to 25% of available screen space
let g:netrw_keepdir=0 " keeps the directory you accessed previously
let g:netrw_localcopydircmd='cp -r' " modifies the command used to copy files

" Allow cursor keys in insert mode set esckeys
" Allow backspace in insert mode
set backspace=indent,eol,start

" Don’t add empty newlines at the end of files
set binary
set noeol

" Show “invisible” characters
set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_
set list

filetype on " Enable file type detection
autocmd BufNewFile,BufRead *.json setfiletype json syntax=javascript " Treat .json files as .js
autocmd BufNewFile,BufRead *.md setlocal filetype=markdown " Treat .md files as Markdown

"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
if (empty($TMUX) && getenv('TERM_PROGRAM') != 'Apple_Terminal')
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  if (has("termguicolors"))
    set termguicolors
  endif
endif

" Create file without opening buffer
function! CreateInPreview()
  let l:filename = input('please enter filename: ')
  execute 'silent !touch ' . b:netrw_curdir.'/'.l:filename
  redraw!
endfunction

" Netrw: create file using touch instead of opening a buffer
function! Netrw_mappings()
  noremap <buffer>% :call CreateInPreview()<cr>
endfunction

augroup auto_commands
    autocmd filetype netrw call Netrw_mappings()
    " autocmd BufWrite *.py call CocAction('format') " format Python code when saving
    " autocmd FileType scss setlocal iskeyword+=@-@ " resolve inconsistency with SCSS files
augroup END

augroup ProjectDrawer
  autocmd!
  autocmd VimEnter * :Vexplore
augroup END

" Plugins with plug.vim
call plug#begin()
" Plug 'preservim/nerdtree'

" Appearance
Plug 'ryanoasis/vim-devicons' " icons in the interface
Plug 'vim-airline/vim-airline' " modifies the status bar to make it more pleasant than the default one

" Utilities
Plug 'sheerun/vim-polyglot' " syntax highlighting for several programming languages
Plug 'jiangmiao/auto-pairs' " automatically closes parentheses, square brackets and braces when typing
Plug 'ap/vim-css-color' " shows colors (hex, RGB, HSL) directly in the code

" Completion / linters / formatters
" Plug 'neoclide/coc.nvim',  {'branch': 'master', 'do': 'yarn install'} " provides auto-completion, very similar to what is available in VS Code
Plug 'plasticboy/vim-markdown' " better support for Markdown file syntax

" Git
Plug 'airblade/vim-gitgutter' " Shows Git changes in open files

" Theme
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
call plug#end()

colorscheme catppuccin-frappe " catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha

" Others
let g:airline_theme='sobrio'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
" let NERDTreeShowHidden=1
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard'] " CTRL + P enables file search within project folder

" Disable math tex conceal feature
let g:tex_conceal = ''
let g:vim_markdown_math = 1

" Markdown
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_conceal = 0
let g:vim_markdown_fenced_languages = ['tsx=typescriptreact']

" Normal mode remappings
nnoremap <C-q> :q!<CR> " closes the open screen
nnoremap <F4> :bd<CR> " closes open file
nnoremap <F5> :NERDTreeToggle<CR> " show or hides NERDtree
nnoremap <F6> :sp<CR>:terminal<CR> " opens terminal in lower split window

" Tabs
nnoremap <S-Tab> gT " switch to previous tab
nnoremap <Tab> gt " switch to enxt open tab
nnoremap <silent> <S-t> :tabnew<CR> " creates a new tab
