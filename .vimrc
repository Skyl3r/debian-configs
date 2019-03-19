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


"Settings for solarized color scheme
"Requires apprentice theme. Direct link:
"https://raw.githubusercontent.com/romainl/Apprentice/master/colors/apprentice.vim
syntax enable
let g:solarized_termcolors=256
colorscheme apprentice

"Set mapping to CTRL + O for opening NERD Tree
map <C-o> :NERDTree<CR>			


let g:ycm_always_populate_location_list=1	"Always look for database file for semantic code completion

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

Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'mattn/emmet-vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-surround'
Plugin 'majutsushi/tagbar'
Plugin 'vim-airline/vim-airline'
Plugin 'honza/vim-snippets'
Plugin 'junegunn/fzf'
Plugin 'easymotion/vim-easymotion'
Plugin 'pangloss/vim-javascript'
Plugin 'flazz/vim-colorschemes'

" <=====================================
" End of plugins list
" <=====================================
call vundle#end()
filetype plugin indent on

" <====================================
" Some Brief help for Vundle:
" :PluginList		- List configured plugins
" :PluginInstall	- Install plugins; Append ! to update
" :PluginUpdate		- Update configured plugins
" :PluginSearch		- Search for plugin foo
" :PluginClean		- Confirms removal of unused plugins
" <====================================
