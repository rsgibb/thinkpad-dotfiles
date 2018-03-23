set tabstop=4
set autoindent
set mouse=a
set number
set relativenumber
set shiftwidth=4
set expandtab
set ruler
set noshowmode

" search
set smartcase
set ignorecase

" toggle nerdtree
map <C-n> :NERDTreeToggle<CR>
" close vim if it's the last window
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let g:airline_theme="deus"
set cmdheight=1

syntax on

" override background color for transparency
let g:jellybeans_background_color_256='NONE'
"hi Normal ctermbg=NONE
source ~/.vim/jellybeans.vim
