" Plugins =====================================================================
" Auto-install vim-plug if not already installed
let autoload_plug_path = stdpath('config') . '/autoload/plug.vim'
if !filereadable(autoload_plug_path)
  silent execute '!curl -fLo ' . autoload_plug_path . ' --create-dirs
    \ "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
unlet autoload_plug_path

" Plugin directory
call plug#begin('~/.config/nvim/plugged')

" Syntax Highlighting ---------------------------------------------------------
Plug 'bfrg/vim-cpp-modern'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
"Plug 'maxbane/vim-asm_ca65'

" Editing ---------------------------------------------------------------------
"Plug 'tpope/vim-commentary'
"Plug 'jiangmiao/auto-pairs'

" Linting ---------------------------------------------------------------------
"Plug 'w0rp/ale'
"Plug 'mattn/emmet-vim'

" Initialize plugins
call plug#end()

" Settings ====================================================================
" General ---------------------------------------------------------------------
" Maximum line length in columns
set textwidth=79								
" Timeout length for key sequences
set timeoutlen=250							
" Timeout length for keycodes
set ttimeoutlen=0								
" No backup files
set noswapfile									
" No .netrwhist
let g:netrw_dirhistmax=0 
" Allow hidden buffers
set hidden											

" UI --------------------------------------------------------------------------
" Enable syntax processing
syntax enable                   
" vim/colors/nori.vim
colorscheme nori
" vim/colors/chinsei.vim
"colorscheme chinsei             
" vim/colors/okashi.vim
"colorscheme okashi             
" Show line numbers
set number                      
" Cursor settings
"set guicursor=a:blinkon1				
" Turn off paren highlighting (commented out)
"let loaded_matchparen = 1
" Vertical line indicating max line length
let &colorcolumn=&textwidth+1		
" Fill characters
set fillchars=stl:\ ,stlnc:\ ,vert:\ ,fold:-

" Formatting ------------------------------------------------------------------
" Filetype dependent indenting (commented out--set by vim-plug)
"filetype plugin indent on       
" use 4 spaces for tabs
set tabstop=4 softtabstop=4 shiftwidth=4
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
