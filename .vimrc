"Vim-Plug Plugin Manager 
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()

"Plugins (shortend links from github)
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
Plug 'itchyny/lightline.vim' "Botton bar (lightline)
Plug 'sainnhe/edge'			"Vim skin
Plug 'scrooloose/nerdtree'		"File tree view 
Plug 'Xuyuanp/nerdtree-git-plugin' "Shows if file has changed 
Plug 'tmhedberg/SimpylFold'			"Better folding 
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'kjwon15/vim-transparent'


call plug#end()

"Lightline config
set laststatus=2
set noshowmode

"Misc
set nu					"show line numbers
set shiftwidth=4		"standart indent size
set tabstop=4			"tab size
set autoindent			"When at new line keep indent
set smartindent			"indent afer certain inputs ( function body etc.)
set encoding=UTF-8		
set foldmethod=syntax	"Uses syntax to detect foldable blocks
set foldnestmax=1		"Vim folds everything at opening one layer deep 
set cursorline

hi Cursor ctermbg=15 ctermfg=8

"vim user shortcuts
"moving windows
nnoremap <C-J> <C-W>j	
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l
nnoremap <C-H> <C-W>h
"folding shortcut

"hide statusbar
set shortmess=F

"Nerdtree config 
autocmd VimEnter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"COC.nvim Config
"	set hidden
"set nobackup
"set nowritebackup
"set cmdheight=2
"set updatetime=100
"set shortmess+=c
"set signcolumn=yes

inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr>    pumvisible() ? "\<C-y>" : "\<cr>"

"Theme
set termguicolors
set background=dark

colorscheme edge

let g:lightline = {
\'colorscheme': 'ayu_dark',
\}


"Nerdtree Highlighting
let s:brown = "905532"
let s:aqua =  "3AFFDB"
let s:blue = "689FB6"
let s:darkBlue = "44788E"
let s:purple = "834F79"
let s:lightPurple = "834F79"
let s:red = "AE403F"
let s:beige = "F5C06F"
let s:yellow = "F09F17"
let s:orange = "D4843E"
let s:darkOrange = "F16529"
let s:pink = "CB6F6F"
let s:salmon = "EE6E73"
let s:green = "8FAA54"
let s:lightGreen = "31B53E"
let s:white = "FFFFFF"
let s:rspec_red = 'FE405F'
let s:git_orange = 'F54D27'

let g:NERDTreeExtensionHighlightColor = {} " this line is needed to avoid error
let g:NERDTreeExtensionHighlightColor['c'] = s:orange
let g:NERDTreeExtensionHighlightColor['java'] = s:blue
let g:NERDTreeExtensionHighlightColor['py'] = s:yellow


