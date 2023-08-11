" plugins
call plug#begin('~/.vim/bundle')

" show file structure
Plug 'scrooloose/nerdtree'

" vim color themes
Plug 'mhartington/oceanic-next'
Plug 'gkjgh/cobalt'

" for grep text in project
Plug 'mileszs/ack.vim'

Plug 'rking/ag.vim'

Plug 'isruslan/vim-es6'

" for quick comment
Plug 'scrooloose/nerdcommenter'

" rvm vim
Plug 'tpope/vim-rvm'

" search file
Plug 'kien/ctrlp.vim'

" tag bar for methods navigation
" Plug 'majutsushi/tagbar'
Plug 'vim-scripts/taglist.vim'

" quickly highlight word
Plug 't9md/vim-quickhl'

" multiple cursors manipulation
Plug 'terryma/vim-multiple-cursors'

" show vertical line
Plug 'Yggdroot/indentLine'

" a Git wrapper so awesome
Plug 'tpope/vim-fugitive'

" auto complete
Plug 'Valloric/YouCompleteMe'
Plug 'Shougo/deoplete.nvim'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'

" search files in Vim
Plug 'wincent/command-t'

" Slim syntax
Plug 'gmarik/Vundle.vim'
Plug 'slim-template/vim-slim'

" Run Spec
Plug 'thoughtbot/vim-rspec'

" Ruby syntax
Plug 'vim-ruby/vim-ruby'

Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

call plug#end()

" set indent
set smartindent
set shiftwidth=2

" set line number
set number
set relativenumber

" enable highlight search
set hlsearch

" theme
set background=light
syntax enable
colorscheme OceanicNext
"colorscheme cobalt

" link system clipboard
set clipboard+=unnamed

" set vim prefix
let mapleader = ","

" setup grep search
" the precondition is `brew install ag`
set grepprg=ag\ --vimgrep
set grepformat=%f:%l:%c:%m

let g:multi_cursor_select_all_word_key = '<C-a>'

" set dir for tmp file
set dir=~/works/tmp
set shortmess+=A

" set swapfile
set noswapfile

" delete not working in insert mode
set backspace=indent,eol,start

" replace tab with spaces
set tabstop=2
set shiftwidth=2
set expandtab

" Automatically removing all trailing whitespace
" http://vim.wikia.com/wiki/Remove_unwanted_spaces
autocmd BufWritePre * :%s/\s\+$//e

" enable CommandT to load more files
let g:CommandTSuppressMaxFilesWarning=1
let g:CommandTMaxFiles=200000

" Use deoplete.
let g:deoplete#enable_at_startup = 1

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"

"" shortcut
" ctags shortcut
nnoremap <leader>cr :!/usr/local/bin/ctags -R --languages=Ruby<CR>
nnoremap <leader>cj :!/usr/local/bin/ctags -R --languages=Javascript<CR>
nnoremap <C-U> :tabnew<CR>
nnoremap <C-J> :tabnext<CR>
nnoremap <C-K> :tabprevious<CR>
nnoremap <C-L> :CtrlPMRU<CR>
nnoremap <C-T> :CommandT<CR>
nnoremap <leader>t :Tlist<CR>
nnoremap <leader>r :NERDTree<CR>
nnoremap <leader>q :q<CR>
nnoremap <Space> /
nnoremap <leader>f :NERDTreeFind<CR>
nnoremap <leader>g :NERDTreeToggle<CR>
nmap <leader>s <Plug>(quickhl-manual-this)
xmap <leader>s <Plug>(quickhl-manual-this)
nmap <leader>S <Plug>(quickhl-manual-reset)
xmap <leader>S <Plug>(quickhl-manual-reset)

" RSpec.vim mappings
map <Leader>c :call RunCurrentSpecFile()<CR>
map <Leader>n :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>
