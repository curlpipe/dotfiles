"""""""""""""""""""""""
"        _            "
" __   _(_)_ __ ___   "
" \ \ / / | '_ ` _ \  "
"  \ V /| | | | | | | "
"   \_/ |_|_| |_| |_| "
"                     "
"""""""""""""""""""""""

""" User interface
    "" General tweaks
        " Syntax highlighting
        syntax on
        colorscheme telekon
        " Line numbers
        set number
        " Commands
        set showcmd
        set wildmenu
        " Optimisations
        set lazyredraw
        " Brackets
        set showmatch
        " Searching
        set incsearch
        " Tab bar
        set showtabline=2
    "" Status line
        " Always show
        set laststatus=2
        " Build status line
        set statusline=
        " Insert current mode
        set statusline+=%#DiffAdd#%{(mode()=='n')?'\ \ NORMAL\ ':''} 
        set statusline+=%#DiffAdd#%{(mode()=='c')?'\ \ NORMAL\ ':''} 
        set statusline+=%#DiffChange#%{(mode()=='i')?'\ \ INSERT\ ':''} 
        set statusline+=%#DiffDelete#%{(mode()=='R')?'\ \ REPLACE\ ':''} 
        set statusline+=%#DiffText#%{(mode()=='v')?'\ \ VISUAL\ ':''} 
        set statusline+=%#DiffText#%{(mode()=='V')?'\ \ VISUAL\ LINE\ ':''} 
        " Set inner bar colour
        set statusline+=%#TabLineFill#
        " Insert current file as well as the modified and readonly indicators
        set statusline+=\ %f\ %m%r
        " Insert spacing
        set statusline+=%=
        " Insert file type
        set statusline+=%#FileType#\ %y\ 
        " Insert line count and percentage
        set statusline+=%#TabLineSel#\ %l\/%L\ %p%%\ 
        
""" Key bindings
    "" Fix arrow key nonsense
        if &term == 'alacritty'
            set ttymouse=sgr
            execute "set <xUp>=\e[1;*A"
            execute "set <xDown>=\e[1;*B"
            execute "set <xRight>=\e[1;*C"
            execute "set <xLeft>=\e[1;*D"
        endif
    "" Switch : and ;
        noremap : ;
        noremap ; :
    "" Force system clipboard
        set shell=/bin/bash
        nnoremap p :let @"=substitute(system("wl-paste --no-newline"), '<C-v><C-m>', '', 'g')<cr>p
        xnoremap y "+y
        xnoremap x "+x
    "" Tabs and indentation
        set tabstop=4
        set softtabstop=4
        set shiftwidth=4
        set expandtab
        filetype plugin indent on
    "" Moving selections up and down
        nnoremap <C-k> :m .+1<CR>==
        nnoremap <C-j> :m .-2<CR>==
        inoremap <C-k> <Esc>:m .+1<CR>==gi
        inoremap <C-j> <Esc>:m .-2<CR>==gi
        vnoremap <C-k> :m '>+1<CR>gv=gv
        vnoremap <C-j> :m '<-2<CR>gv=gv
    "" General key bindings
        " Resourcing vimrc
        nnoremap <silent> <C-a> :source ~/.vimrc<CR>
        " Allow moving to top and bottom of document
        nnoremap <silent> <C-Up> :goto<CR>
        nnoremap <silent> <C-Down> :$<CR>
    "" Tab management
        " Next tab
        nnoremap <silent> <CS-Down> :tabnext<CR>
        " Previous tab
        nnoremap <silent> <CS-Up> :tabprevious<CR>
        " New tab
        nnoremap <silent> <C-S-t> :tabnew<CR>

" Reminder: Reinstall and clean plug ins
""" File tree
    set autochdir
    let g:netrw_liststyle = 3
    let g:netrw_banner = 0
    let g:netrw_browse_split = 4
    let g:netrw_winsize = 25
    let g:netrw_altv = 1
    let g:netrw_keepdir = 0
    " Toggle the tree
    nnoremap <silent> <C-n> :call ToggleNetrw()<CR>
    " Clear hidden tree buffers
    augroup AutoDeleteNetrwHiddenBuffers
        au!
        au FileType netrw setlocal bufhidden=wipe
    augroup end

""" Plug-ins
    "" Installation
        call plug#begin('~/.vim/plugged')
            " Auto pairs
            Plug 'jiangmiao/auto-pairs'
            " Wayland clipboard
            Plug 'jasonccox/vim-wayland-clipboard'
            " Rust langauge support
            Plug 'rust-lang/rust.vim'
            " Autocomplete
            Plug 'tabnine/YouCompleteMe'
            " Ron syntax highlighting
            Plug 'ron-rs/ron.vim'
            call plug#end()
    "" Auto complete
        set encoding=utf-8
        set completeopt+=popup
    "" Auto comments
        source ~/.vim/comments.vim

""" Functions
    "" File tree toggling
        let g:NetrwIsOpen=0
        function! ToggleNetrw()
            if g:NetrwIsOpen
                let i = bufnr("$")
                while (i >= 1)
                    if (getbufvar(i, "&filetype") == "netrw")
                        silent exe "bwipeout " . i 
                    endif
                    let i-=1
                endwhile
                let g:NetrwIsOpen=0
            else
                let g:NetrwIsOpen=1
                silent Lexplore
            endif
        endfunction
