" Plugins =====================================================================
" Auto-install vim-plug if not already installed ------------------------------
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugin Directory ------------------------------------------------------------
call plug#begin('~/.config/nvim/plugged')

" Syntax Highlighting ---------------------------------------------------------
Plug 'bfrg/vim-cpp-modern'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
"Plug 'maxbane/vim-asm_ca65'

" Editing ---------------------------------------------------------------------
Plug 'jiangmiao/auto-pairs'

" Linting ---------------------------------------------------------------------
"Plug 'w0rp/ale'
"Plug 'mattn/emmet-vim'

" Initialize Plugins ----------------------------------------------------------
call plug#end()

" Settings ====================================================================
" General ---------------------------------------------------------------------
set textwidth=79								" Maximum line length in columns
set timeoutlen=250							" Timeout length for key sequences
set ttimeoutlen=0								" Timeout length for keycodes
set noswapfile									" No backup files
set hidden											" Allow hidden buffers

" UI --------------------------------------------------------------------------
syntax enable                   " Enable syntax processing
colorscheme chinsei             " vim/colors/chinsei.vim
"colorscheme okashi             " vim/colors/okashi.vim
set number                      " Show line numbers
set guicursor=a:blinkon1				" Cursor settings
let &colorcolumn=&textwidth+1		" Vertical line indicating max line length
" Fill characters
set fillchars=stl:\ ,stlnc:\ ,vert:\ ,fold:-

" Formatting ------------------------------------------------------------------
filetype plugin indent on       " Filetype dependent indenting
" use 2 spaces for tabs
set tabstop=2 softtabstop=2 shiftwidth=2
" Disable auto comment insertion
autocmd BufNewFile,BufRead,FileType,OptionSet * set formatoptions-=cro
autocmd BufNewFile,BufRead,FileType,OptionSet * setlocal formatoptions-=cro

" ALE =========================================================================
"let g:ale_sign_column_always = 1
"let b:ale_linters = {'cpp': ['clang-tidy',]}

" Custom Functions ============================================================
" Fill Lines ------------------------------------------------------------------
function! s:FillLine(str)
	" The width to be filled
	let l:fw = &textwidth - strlen(getline('.'))
	" The width of the argument string
	let l:sw = strlen(a:str)
	" The number of times to repeat the argument string
	let l:rep = l:fw / l:sw
	" If there is a remainder
	let l:rem = l:fw % l:sw
	" Rewrite the current line as existing text plus repeated argument string
	call setline(
	\	'.',
	\	getline('.') . repeat(a:str, l:rep) . strpart(a:str, 0, l:rem)
	\ )
endfunction

command! -nargs=1 Fill call s:FillLine(<f-args>)

inoremap <silent> <F8> <Esc>:Fill =<CR>A
inoremap <silent> <F7> <Esc>:Fill _<CR>A
inoremap <silent> <F6> <Esc>:Fill -<CR>A
inoremap <silent> <F5> <Esc>:Fill .<CR>A

" vimrc =======================================================================
"set runtimepath^=/.vim runtimepath+=~/.vim/after
"let &packpath = &runtimepath
"source ~/.vimrc
