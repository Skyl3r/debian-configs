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

highlight BadWhitespace ctermbg=darkgray
syntax on

"Code folding - mapped to space
set foldmethod=indent
set foldlevel=99

"""""""""""""""""""""""""""""""""""""""""""
"vim-airline settings
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '>'
let g:airline_theme='badwolf'
"""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""
"Omnisharp Bindings
let g:OmniSharp_server_stdio = 1
nnoremap <space> za
"Make Tab complete
inoremap <expr> <Tab> pumvisible() ? '<C-n>' :
\ getline('.')[col('.')-2] =~# '[[:alnum:].-_#$]' ? '<C-x><C-o>' : '<Tab>'
"Make C-o C-u show usages
nnoremap <C-o><C-u> :OmniSharpFindUsages<CR>
"Make C-o C-d show definitions
nnoremap <C-o><C-d> :OmniSharpGotoDefinition<CR>
nnoremap <C-o><C-d><C-p> :OmniSharpPreviewDefinition<CR>
nnoremap <C-o><C-r> :!dotnet run<CR>
""""""""""""""""""""""""""""""""""""""""""


"Settings for solarized color scheme
"Requires apprentice theme. Direct link:
"https://raw.githubusercontent.com/romainl/Apprentice/master/colors/apprentice.vim
syntax enable
let g:solarized_termcolors=256
colorscheme badwolf
let g:badwolf_tabline = 3
""""""""""""""""""""""""""""""""""""""""""
"Set mapping to CTRL + O for opening NERD Tree
map <C-o> :NERDTreeToggle<CR>			
let g:ycm_autoclose_preview_window_after_completion=1
""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""
"tagbar
nmap <F8> :TagbarToggle<CR>
"""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""
"vim-easymotion
"" <Leader>f{char} to move to {char}
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)

" s{char}{char} to move to {char}{char}
nmap s <Plug>(easymotion-overwin-f2)

" Move to line
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)

" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)
""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""
"Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
""""""""""""""""""""""""""""""""""""""""""


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
" =====================================

Plugin 'inside/vim-search-pulse'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'sjl/badwolf'
Plugin 'RRethy/vim-illuminate'
Plugin 'lilydjwg/colorizer'
Plugin 'luochen1990/rainbow'
Plugin 'tomtom/tcomment_vim'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'mattn/emmet-vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-surround'
Plugin 'majutsushi/tagbar'
Plugin 'itchyny/lightline.vim'
Plugin 'honza/vim-snippets'
Plugin 'junegunn/fzf'
Plugin 'easymotion/vim-easymotion'
Plugin 'flazz/vim-colorschemes'
Plugin 'vim-syntastic/syntastic'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'OmniSharp/omnisharp-vim'

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
