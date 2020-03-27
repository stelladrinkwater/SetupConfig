" Index ----------------------------------------

" - Basics
" - Search
" - Font
" - Backspace Script

" Basics ---------------------------------------

set history=250 "Lines Vim will remember
set nu "Numbered lines
set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines
set cmdheight=2 "Command bar height
set lazyredraw "Improve speed
set showmatch "Hilight matching bracket
set mat=5
set noerrorbells "No sound
set novisualbell
set t_vb=
set tm=500
if has("gui_macvim")
    autocmd GUIEnter * set vb t_vb=
endif
set foldcolumn=1 "Extra left margin
set expandtab "Tab Stuff
set smarttab
set shiftwidth=4
set tabstop=4
set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines
colorscheme peaksea "colour
inoremap $1 ()<esc>i "Autocomplete matching brackets
inoremap $2 []<esc>i
inoremap $3 {}<esc>i
inoremap $4 {<esc>o}<esc>O
inoremap $q ''<esc>i
inoremap $e ""<esc>i

" Search ---------------------------------------

set ignorecase "Ignores case in search
set smartcase
set hlsearch "Hilight search
set incsearch "Incremental search

" Font (used from amix/vimrc) ------------------

syntax enable "Syntax hilights
try
    colorscheme desert
catch
endtry
set background=dark
if has("mac") || has("macunix") 
    set gfn=IBM\ Plex\ Mono:h14,Hack:h14,Source\ Code\ Pro:h15,Menlo:h15
elseif has("win16") || has("win32")
    set gfn=IBM\ Plex\ Mono:h14,Source\ Code\ Pro:h12,Bitstream\ Vera\ Sans\ Mono:h11
elseif has("gui_gtk2")
    set gfn=IBM\ Plex\ Mono:h14,:Hack\ 14,Source\ Code\ Pro\ 12,Bitstream\ Vera\ Sans\ Mono\ 11
elseif has("linux")
    set gfn=IBM\ Plex\ Mono:h14,:Hack\ 14,Source\ Code\ Pro\ 12,Bitstream\ Vera\ Sans\ Mono\ 11
elseif has("unix")
    set gfn=Monospace\ 11
endif

" Backspace Script (from amix/vimrc) -----------

set backspace=eol,start,indent
set whichwrap+=<,>,h,l
