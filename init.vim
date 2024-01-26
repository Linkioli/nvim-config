set showmatch               " show matching 
set ignorecase              " case insensitive 
set mouse=v                 " middle-click paste with 
set hlsearch                " highlight search 
set incsearch               " incremental search
set tabstop=4               " number of columns occupied by a tab 
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions
filetype plugin indent on   " allow auto-indenting depending on file type
syntax on                   " syntax highlighting
set nocompatible            " I have no idea what this does tbh
set mouse=a                 " enable mouse click
set clipboard=unnamedplus   " using system clipboard
filetype plugin on
set relativenumber
set ttyfast                 " Speed up scrolling in Vim
" set spell                 " enable spell check (may need to download language package)
" set noswapfile            " disable creating swap file
" set backupdir=~/.cache/vim " Directory to store backup files.


call plug#begin('~/.vim/plugged')


Plug 'sheerun/vim-polyglot'                         " Language Pack
Plug 'neoclide/coc.nvim', {'branch': 'release'}     " autofill suggestions
Plug 'preservim/nerdtree'                           " file tree
Plug 'Xuyuanp/nerdtree-git-plugin'                  " shows git status in nerd tree
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'      " adds sytax highlighting to nerdtree
Plug 'ryanoasis/vim-devicons'                       " adds language icons to nerdtree
Plug 'dracula/vim'                                  " dracula colorscheme
Plug 'ellisonleao/gruvbox.nvim' 
Plug 'dylanaraps/wal.vim'
Plug 'kyazdani42/nvim-web-devicons'                 " adds more laguage icons
Plug 'jiangmiao/auto-pairs'                         " auto pairs
Plug 'voldikss/vim-floaterm'                        " vim terminal
Plug 'ap/vim-css-color'                             " show hex colors in css files
Plug 'beardedfoo/vim-colemak'                       " colemak plugin
Plug 'nvim-lua/plenary.nvim'                        " dependancy for telescope
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.5' } 
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
" Plug 'dylanaraps/wal.vim'                           " adds pywal support

call plug#end()

let mapleader = "\<Space>"



" set termguicolors
syntax enable
" colorscheme dracula
colorscheme gruvbox
" colorscheme wal

" open new split panes to right and below
set splitright
set splitbelow
set completeopt=longest,menuone


" NERDTree bindings
nmap <C-n> :NERDTreeToggle<CR> 
" Sets keybind to toggle nerdtree to control + n
nmap <C-y> :Telescope find_files<CR> 
nmap <leader>h :nohlsearch
nmap <leader>t :terminal

" ---------------------------------------------------------------------------
" Floaterm settings
" ---------------------------------------------------------------------------

" bindings
let g:floaterm_keymap_new    = '<F9>'
let g:floaterm_keymap_prev   = '<F10>'
let g:floaterm_keymap_next   = '<F11>'
let g:floaterm_keymap_toggle = '<F12>'

" ---------------------------------------------------------------------------
" COC settings
" ---------------------------------------------------------------------------


" May need for Vim (not Neovim) since coc.nvim calculates byte offset by count
" utf-8 byte sequence
set encoding=utf-8
" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Having longer updatetime (default is 4000 ms = 4s) leads to noticeable
" delays and poor user experience
set updatetime=300

" Use tab for trigger completion with characters ahead and navigate
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif


" Highlight the symbol and its references when holding the cursor
autocmd CursorHold * silent call CocActionAsync('highlight')


augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s)
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" ---------------------------------------------------------------------------
" airline settings
" ---------------------------------------------------------------------------

let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_theme='base16_gruvbox_dark_hard'

" ---------------------------------------------------------------------------
" treesitter settings
" ---------------------------------------------------------------------------

lua require'nvim-treesitter.configs'.setup{highlight={enable=true}}
