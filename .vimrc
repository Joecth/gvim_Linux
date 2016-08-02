"colorscheme default
colorscheme evening

" change comment color from dark blue to light blue
highlight Comment ctermfg=darkcyan
highlight Search term=reverse ctermbg=4 ctermfg=7
highlight Normal ctermbg=black ctermfg=white

set hlsearch    "highlight search
set ignorecase  "ignore case in search patterns
set incsearch   "While typing a search command, show where the pattern
set nobackup 
set linebreak   "wrap long lines at a character in 'breakat'
set ruler       "Show the line and column number of the cursor position
set backspace=indent,eol,start
set display=lastline
set showmatch
set fileencodings=utf-8,big5,euc-jp,gbk,euc-kr,utf-bom,iso8859-1
"set completeopt=longest,menuone "select the longest mathching string
"set mouse=ni
"set number

set expandtab
"set textwidth=79
set tabstop=8
set softtabstop=4
set shiftwidth=4
"set foldmethod=indent

syntax on
filetype indent on
filetype plugin on

autocmd FileType python set omnifunc=pythoncomplete#Complete

""" shortcuts

"nnoremap ` <Esc>
"vnoremap ` <Esc>
"onoremap ` <Esc>
"inoremap ` <Esc>

" tab
"set guioptions-=e
"set tabpagemax=999
"map <C-t>l <ESC>:tabnext<CR>
"map <C-t>h <ESC>:tabprev<CR>
"map <C-t>n <ESC>:tabnew<CR>

" yank to system clipboard
"nnoremap yy yy"+yy

" Use CTRL-I to do what CTRL-A used to do
noremap <C-I> <C-A>

" spell check
map <F2> :set spell!<CR><Bar>:echo "Spell check: " . strpart("OffOn", 3 * &spell, 3)<CR>

" find diff
map <F3> <ESC>]c
map <F4> <ESC>[c

"taglist
nnoremap <silent> <f9> :TlistToggle<cr>
let Tlist_Inc_Winwidth = 0

" Tasklist
nnoremap <silent> <f11> :TaskList<CR>

" cscope
nnoremap <f7> :cscope reset<cr>
if has("cscope")
    set csto=0
    set nocst
    set cspc=3
    nmap <C-_>s :vert scs find s <C-R>=expand("<cword>")<CR><CR>
    nmap <C-_>g :vert scs find g <C-R>=expand("<cword>")<CR><CR>
    nmap <C-_>c :vert scs find c <C-R>=expand("<cword>")<CR><CR>
    nmap <C-_>t :vert scs find t <C-R>=expand("<cword>")<CR><CR>
    nmap <C-_>e :vert scs find e <C-R>=expand("<cword>")<CR><CR>
    nmap <C-_>f :vert scs find f <C-R>=expand("<cfile>")<CR><CR>
    nmap <C-_>i :vert scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
    nmap <C-_>d :vert scs find d <C-R>=expand("<cword>")<CR><CR>
    if filereadable("cscope.out")
        cs add cscope.out -C
    endif
endif

" Source Explorer
" // The switch of the Source Explorer 
nmap <F8> :SrcExplToggle<CR> 

" // Set the height of Source Explorer window 
let g:SrcExpl_winHeight = 8

" // Set 100 ms for refreshing the Source Explorer 
let g:SrcExpl_refreshTime = 100

" // Set "Enter" key to jump into the exact definition context 
let g:SrcExpl_jumpKey = "<ENTER>" 

" // Set "Space" key for back from the definition context 
let g:SrcExpl_gobackKey = "<SPACE>" 

" // In order to Avoid conflicts, the Source Explorer should know what plugins 
" // are using buffers. And you need add their bufname into the list below 
" // according to the command ":buffers!" 
"let g:SrcExpl_pluginList = [ 
"        \ "__Tag_List__", 
"        \ "_NERD_tree_", 
"        \ "Source_Explorer" 
"    \ ] 

" // Enable/Disable the local definition searching, and note that this is not 
" // guaranteed to work, the Source Explorer doesn't check the syntax for now. 
" // It only searches for a match with the keyword according to command 'gd' 
let g:SrcExpl_searchLocalDef = 1 

" // Do not let the Source Explorer update the tags file when opening 
let g:SrcExpl_isUpdateTags = 0 

" // Use 'Exuberant Ctags' with '--sort=foldcase -R .' or '-L cscope.files' to 
" //  create/update a tags file 
let g:SrcExpl_updateTagsCmd = "ctags --sort=foldcase -R ." 

" // Set "<F12>" key for updating the tags file artificially 
let g:SrcExpl_updateTagsKey = "<F12>" 

"""""""""""""""""""""""""""""""""""""

au BufReadPost *.cpp,*.h,*.c iab #i #include
au BufReadPost *.cpp,*.h,*.c iab #d #define
au BufReadPost *.cpp,*.h,*.c iab #n #ifndef<CR>#endif<UP><ESC>
au BufReadPost *.cpp,*.h,*.c iab #s #ifndef _SYN<CR>#else<CR>#endif<ESC>
au BufReadPost *.cpp,*.h,*.c iab #g #ifdef _DEBUG<CR>#endif<UP><ESC>
au BufReadPost *.cpp,*.h,*.c iab uns unsigned
au BufReadPost *.cpp,*.h,*.c iab coutt cout << "test 111" << endl;

""" CMAKE syntax & indent support
:autocmd BufRead,BufNewFile *.cmake,CMakeLists.txt,*.cmake.in runtime! indent/cmake.vim 
:autocmd BufRead,BufNewFile *.cmake,CMakeLists.txt,*.cmake.in setf cmake
:autocmd BufRead,BufNewFile *.ctest,*.ctest.in setf cmake

""" LisaTek syntax & indent support
:autocmd BufRead,BufNewFile *.lisa runtime! indent/lisa.vim 
:autocmd BufRead,BufNewFile *.lisa setf lisa

au BufRead,BufNewFile *.lib set filetype=verilog
au BufRead,BufNewFile *.src set filetype=cpp

highlight TabLine term=NONE cterm=NONE ctermfg=white ctermbg=DarkGray
highlight TabLineSel cterm=bold ctermfg=white ctermbg=LightBlue
highlight TabLineFill ctermfg=black ctermbg=black
highlight StatusLine cterm=bold ctermfg=white ctermbg=DarkGray
highlight StatusLineNC term=NONE cterm=NONE ctermfg=LightGray ctermbg=DarkGray
highlight VertSplit term=NONE cterm=NONE ctermfg=LightGray ctermbg=DarkGray


