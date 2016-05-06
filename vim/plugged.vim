""""""""""""""""""
" Plugin settings
""""""""""""""""""

" vim-colors-solarized
set background=dark
colorscheme solarized

" supertab

" tabular

" vim-index-search

" vim-snippets

" vim-orgmode

" ctrlp.vim

" python-mode

" vim-signature

" rainbow
let g:rainbow_active = 1

" LaTeX-Box

" vim-easymotion
let g:EasyMotion_leader_key='<Leader>'

" tagbar
nmap <F5> :TagbarToggle<cr>

" vim-indent-guides
nmap <F4> :IndentGuidesToggle<cr>

" nerdtree
nmap <F6> :NERDTreeToggle<cr>

" syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" ultisnips
let g:UltiSnipsExpandTrigger = '<TAB>'
let g:UltiSnipsJumpForwardTrigger='<TAB>'

" neocomplete.vim
let g:neocomplete#enable_at_startup=1
let g:neocomplete#enable_smart_case=1
inoremap <expr><TAB>  pumvisible() ? '\<C-n>' : '\<TAB>'
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" vim-quickrun

" vim-commentary

" vim-fugitive

" vim-speeddating

" vim-surround

" vim-markdown
let g:vim_markdown_folding_disabled = 1

" vim-airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
