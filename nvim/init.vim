let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" PLUGINS
call plug#begin()
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons' " icons in the interface
Plug 'vim-airline/vim-airline' " modifies the status bar to make it more pleasant than the default one
Plug 'vim-airline/vim-airline-themes'
Plug 'sheerun/vim-polyglot' " syntax highlighting for several programming languages
Plug 'jiangmiao/auto-pairs' " automatically closes parentheses, square brackets and braces when typing
Plug 'ap/vim-css-color' " shows colors (hex, RGB, HSL) directly in the code
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'neoclide/coc.nvim',  {'branch': 'master', 'do': 'yarn install'} " provides auto-completion, very similar to what is available in VS Code
Plug 'plasticboy/vim-markdown' " better support for Markdown file syntax
Plug 'airblade/vim-gitgutter' " Shows Git changes in open files
Plug 'pantharshit00/vim-prisma'
Plug 'kien/ctrlp.vim'
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
call plug#end()

" OPTIONS
filetype plugin indent on
syntax on " automatic syntax support for open files
set t_Co=256 " enable 256 colors on the terminal
colorscheme catppuccin-frappe " catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha
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

  " TAB SIZE
set expandtab " transforms tabs into spaces
set shiftwidth=2 " number of spaces for indentation
set tabstop=2 " number of spaces for tabs

  " UNRELATED?
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
" Allow cursor keys in insert mode set esckeys
" Allow backspace in insert mode
set backspace=indent,eol,start

" TRUE COLOR IF AVAILABLE
let term_program=$TERM_PROGRAM
if $TERM !=? 'xterm-256color'
  set termguicolors
endif
" ITALICS
let &t_ZH="\e[3m"
let &t_ZR="\e[23m"

" FILE TYPE DETECTION
filetype on " Enable file type detection
autocmd BufNewFile,BufRead *.md setlocal filetype=markdown " Treat .md files as Markdown

" Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
if (empty($TMUX) && getenv('TERM_PROGRAM') != 'Apple_Terminal')
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  if (has("termguicolors"))
    set termguicolors
  endif
endif

" MARKDOWN
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_conceal = 0
let g:vim_markdown_fenced_languages = ['tsx=typescriptreact']

" NORMAL MODE MAPPINGS
nnoremap <C-q> :q!<CR> " closes the open screen
nnoremap <F4> :bd<CR> " closes open file
nnoremap <F5> :NERDTreeToggle<CR> " show or hides NERDtree
nnoremap <F6> :sp<CR>:terminal<CR> " opens terminal in lower split window
" nnoremap <leader>n :NERDTreeFocus<CR>
" nnoremap <C-n> :NERDTree<CR>
" nnoremap <C-t> :NERDTreeToggle<CR>
" nnoremap <C-f> :NERDTreeFind<CR>

" TABS MAPPINGS
nnoremap <S-Tab> gT " switch to previous tab
nnoremap <Tab> gt " switch to next open tab
nnoremap <silent> <S-t> :tabnew<CR> " creates a new tab

" PANE MOVEMENT MAPPINGS
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-left> <C-w>h
nnoremap <C-down> <C-w>j
nnoremap <C-up> <C-w>k
nnoremap <C-right> <C-w>l

" OTHERS
" let g:airline_theme='onedark'
let g:airline_theme='base16_dracula' " onedark, ayu_dark, base16_dracula, nightowl
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" NERDTREE
let NERDTreeShowHidden=1 " toggle hidden file visibility
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard'] " CTRL + P enables file search within project folder
command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile') 
" Start NERDTree. If a file is specified, move the cursor to its window.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif
" Show highlight groups
map <F12> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

" AUTO COMMANDS
augroup auto_commands
	" autocmd BufWrite *.py call CocAction('format')
	autocmd FileType scss setlocal iskeyword+=@-@
augroup END

" Terminal Function
let g:term_buf = 0
let g:term_win = 0
function! TermToggle(height)
    if win_gotoid(g:term_win)
        hide
    else
        botright new
        exec "resize " . a:height
        try
            exec "buffer " . g:term_buf
        catch
            call termopen($SHELL, {"detach": 0})
            let g:term_buf = bufnr("")
            set nonumber
            set norelativenumber
            set signcolumn=no
        endtry
        startinsert!
        let g:term_win = win_getid()
    endif
endfunction

" Toggle terminal on/off (neovim)
" nnoremap <A-t> :vsp term://pwsh<CR>i
nnoremap <A-t> :sp term://pwsh<CR>i
" inoremap <A-t> <Esc>:call TermToggle(12)<CR>
" tnoremap <A-t> <C-\><C-n>:call TermToggle(12)<CR>
" nnoremap <A-t> :call TermToggle(12)<CR>
" inoremap <A-t> <Esc>:call TermToggle(12)<CR>
" tnoremap <A-t> <C-\><C-n>:call TermToggle(12)<CR>

" Terminal go back to normal mode
tnoremap <Esc> <C-\><C-n>
tnoremap :q! <C-\><C-n>:q!<CR>

map tv :lcd %:p:h<CR>:vsp term://pwsh<CR>i
map th :lcd %:p:h<CR>:sp term://pwsh<CR>i
" :vsp term://pwsh