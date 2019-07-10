"Global Options
set exrc			"Tells VIM to source .vimrc from working directory
set secure			"Restricts some VIM usage in non default .vimrc files
set number

set laststatus=2	"Always shows the status bar
set splitbelow		"Set default split pane to below
set splitright		"Set default split pane to right

set tabstop=4		"Set tab preferences
set softtabstop=4
set shiftwidth=4
set noexpandtab

"Python PEP8 indentation
au BufNewFile,BufRead *.py
	\set tabstop=4
	\set softtabstop=4
	\set shiftwidth=4
	\set textwidth=79
	\set expandtab
	\set autoindent
	\set fileformat=unix

highlight BadWhitespace ctermbg=darkgray
au BufRead,BufNewFile *.py,*.pyw match BadWhitespace /\s\+$/

" Python Virtual env support
py3 << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
	project_base_dir = os.environ['VIRTUAL_ENV']
	activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
	execfile(activate_this, dict(__file__=activate_this))
EOF

" Python code highlighting
let python_highlight_all=1
syntax on

"Code folding - mapped to space
set foldmethod=indent
set foldlevel=99
nnoremap <space> za


"Settings for solarized color scheme
"Requires apprentice theme. Direct link:
"https://raw.githubusercontent.com/romainl/Apprentice/master/colors/apprentice.vim
syntax enable
let g:solarized_termcolors=256
colorscheme apprentice 

"Set mapping to CTRL + O for opening NERD Tree
map <C-o> :NERDTree<CR>			
let g:ycm_global_ycm_extra_conf = '$USER/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>



set colorcolumn=110							"Set line 110 to color column
highlight ColorColumn ctermbg=darkgray


"I use Vundle from gmarik/Vundle.vim
"It will be placed in ~/.vim/bundle/Vundle.vim

set nocompatible		"Required by Vundle
filetype off			"Required by Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" <=====================================
" List of Plugins
" <=====================================

Plugin 'inside/vim-search-pulse'
Plugin 'RRethy/vim-illuminate'
Plugin 'lilydjwg/colorizer'
Plugin 'luochen1990/rainbow'
Plugin 'scrooloose/nerdtree'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'mattn/emmet-vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-surround'
Plugin 'majutsushi/tagbar'
Plugin 'vim-airline/vim-airline'
Plugin 'honza/vim-snippets'
Plugin 'junegunn/fzf'
Plugin 'StanAngeloff/php.vim'
Plugin 'phpactor/phpactor'
Plugin 'easymotion/vim-easymotion'
Plugin 'pangloss/vim-javascript'
Plugin 'flazz/vim-colorschemes'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'nvie/vim-flake8'
Plugin 'vim-python/python-syntax'
Plugin 'shawncplus/phpcomplete.vim'
Plugin 'ctrlpvim/ctrlp.vim'

" End of plugins list
" <=====================================
call vundle#end()
filetype plugin indent on
set omnifunc=syntaxcomplete#Complete
set tags=./Tags,Tags;
let g:rainbow_active=1
let g:vim_search_pulse_duration = 200


" <====================================
" Some Brief help for Vundle:
" :PluginList		- List configured plugins
" :PluginInstall	- Install plugins; Append ! to update
" :PluginUpdate		- Update configured plugins
" :PluginSearch		- Search for plugin foo
" :PluginClean		- Confirms removal of unused plugins
" <====================================
