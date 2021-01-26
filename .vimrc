" Window title
set title

" Sets how many lines of history VIM has to remember
set history=500

" Enable filetype plugins
filetype plugin on
filetype indent on

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch 

" Show matching brackets when text indicator is over them
set showmatch 
" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Enable syntax highlighting
syntax on

" Visible whitespace characters
set listchars=eol:$,nbsp:_,tab:>-,trail:~,extends:>,precedes:<

" Fix clipboard
set clipboard=unnamedplus

" Disable automatic commenting
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Be smart when using tabs ;)
set smarttab

" Traverse line breaks with arrow keys
set whichwrap=b,s,<,>,[,]

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

" Remap some keys
command Wq wq
command WQ wq
command W w
command Q q
nnoremap Q <nop>
map <F1> <Esc>
imap <F1> <Esc>
" Delete word
inoremap <C-H> <C-W>

" Always show the status line
set laststatus=2

" Format the status line
set laststatus=2
set statusline=
set statusline+=%1*
set statusline+=%{StatuslineMode()}
set statusline+=%9*
set statusline+=\ 
set statusline+=%F
set statusline+=%=
set statusline+=%y
set statusline+=\ 
set statusline+=%2*
set statusline+=%P
set statusline+=%9*
set statusline+=\ 
set statusline+=%3*
set statusline+=Line:\ %l
set statusline+=\ 
set statusline+=Column:\ %c
hi User1 ctermbg=yellow ctermfg=black guibg=yellow guifg=black
hi User9 ctermbg=darkgrey ctermfg=white guibg=darkgrey guifg=white
hi User2 ctermbg=blue ctermfg=black guibg=blue guifg=black
hi User3 ctermbg=magenta ctermfg=black guibg=magenta guifg=black

function! StatuslineMode()
  let l:mode=mode()
  if l:mode==#"n"
    return "NORMAL"
  elseif l:mode==?"v"
    return "VISUAL"
  elseif l:mode==#"i"
    return "INSERT"
  elseif l:mode==#"R"
    return "REPLACE"
  elseif l:mode==?"s"
    return "SELECT"
  elseif l:mode==#"t"
    return "TERMINAL"
  elseif l:mode==#"c"
    return "COMMAND"
  elseif l:mode==#"!"
    return "SHELL"
  endif
endfunction

" Paste formatting
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode
