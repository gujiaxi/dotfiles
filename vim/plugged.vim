""""""""""""""""""
" Plugin settings
""""""""""""""""""

" vim-colors-solarized
set background=dark
colorscheme solarized

" vim-easymotion
let g:EasyMotion_leader_key='<Leader>'

" nerdtree
let NERDChristmasTree=0
let NERDTreeWinSize=30
let NERDTreeChDirMode=2
let NERDTreeShowBookmarks=1
let NERDTreeWinPos="right"
nmap <F6> :NERDTreeToggle<cr>

" nerdcommenter
let NERDSpaceDelims=1
let NERDCompactSexyComs=1

" supertab
let g:SuperTabDefaultCompletionType='<C-X><C-U>'
let g:SuperTabRetainCompletionType=2

" ctrlp.vim
set wildignore+=*/tmp/*,*.so,*.o,*.a,*.obj,*.swp,*.zip,*.pyc,*.pyo,*.class,.DS_Store " MacOSX/Linux
let g:ctrlp_custom_ignore='\.git$\|\.hg$\|\.svn$'

" tagbar
let g:tagbar_left=1
let g:tagbar_width=30
let g:tagbar_autofocus=1
let g:tagbar_sort=0
let g:tagbar_compact=1
nmap <F5> :TagbarToggle<cr>

" vim-markdown
let g:vim_markdown_folding_disabled=1

" vim-airline
let g:airline#extensions#tabline#enabled=1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" rainbow_parentheses.vim
let g:rbpt_colorpairs=[
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]
let g:rbpt_max=16
let g:rbpt_loadcmd_toggle=0
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" vim-indent-guides
nmap <F4> :IndentGuidesToggle<cr>

" neocomplete.vim
let g:neocomplete#enable_at_startup=1
let g:neocomplete#enable_smart_case=1
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" UltiSnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
