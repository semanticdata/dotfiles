# dotfiles

## GitHub

- [.gitattributes](.gitattributes)
- [.gitignore](.gitignore)

### Git Ignores

- [hugo](github/hugo.gitignore)
- [jekyll](github/jekyll.gitignore)
- [lua](github/lua.gitignore)
- [zola](github/zola.gitignore)

## Other Apps

- [mpv player](mpv.toml)
- [obsidian-publisher](obsidian-publisher.json)

## NeoVim

- [init.vim](nvim/init.vim)
- [plug.vim](nvim-data/site/autoload/plug.vim)
- [coc-settings.json](nvim/coc-settings.json)

### Plugins

- `preservim/nerdtree`
- `ryanoasis/vim-devicons`
- `vim-airline/vim-airline`
- `vim-airline/vim-airline-themes`
- `sheerun/vim-polyglot`
- `jiangmiao/auto-pairs`
- `ap/vim-css-color`
- `neoclide/coc.nvim', {'branch': 'release'}`
- `plasticboy/vim-markdown`
- `airblade/vim-gitgutter`
- `pantharshit00/vim-prisma`
- `kien/ctrlp.vim`
- `catppuccin/nvim', { 'as': 'catppuccin' }`

### Keybindings

#### Standard

- `nnoremap <C-q> :q!<CR> " closes the open screen`
- `nnoremap <F4> :bd<CR> " closes open file`
- `nnoremap <F5> :NERDTreeToggle<CR> " show or hides NERDtree`
- `nnoremap <F6> :sp<CR>:terminal<CR> " opens terminal in lower split window`

#### Tab Navigation

- `nnoremap <S-Tab> gT " switch to previous tab`
- `nnoremap <Tab> gt " switch to next open tab`
- `nnoremap <silent> <S-t> :tabnew<CR> " creates a new tab`

#### Pane/Window Navigation

- `nnoremap <C-h> <C-w>h`
- `nnoremap <C-j> <C-w>j`
- `nnoremap <C-k> <C-w>k`
- `nnoremap <C-l> <C-w>l`
- `nnoremap <C-left> <C-w>h`
- `nnoremap <C-down> <C-w>j`
- `nnoremap <C-up> <C-w>k`
- `nnoremap <C-right> <C-w>l`

#### Terminal

- `nnoremap <A-t> :sp term://pwsh<CR>i`
- `tnoremap <Esc> <C-\><C-n>`
- `tnoremap :q! <C-\><C-n>:q!<CR>`
- `map tv :lcd %:p:h<CR>:vsp term://pwsh<CR>i`
- `map th :lcd %:p:h<CR>:sp term://pwsh<CR>i`
