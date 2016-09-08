""""""""""""""""""
" Plugin settings
""""""""""""""""""

" ervandew/supertab

" godlygeek/tabular

" henrik/vim-index-search

" honza/vim-snippets

" jiangmiao/auto-pairs

" ctrlpvim/ctrlp.vim

" dracula/vim
colorscheme dracula

" klen/python-mode

" kshenoy/vim-signature

" luochen1990/rainbow
let g:rainbow_active = 1

" LaTeX-Box-Team/LaTeX-Box

" Lokaltog/vim-easymotion
let g:EasyMotion_do_mapping = 0
let g:EasyMotion_smartcase  = 1
nmap <Leader>s <Plug>(easymotion-overwin-f2)

" majutsushi/tagbar
nmap <F7> :TagbarToggle<cr>

" mhinz/vim-startify

" mileszs/ack.vim

" nathanaelkane/vim-indent-guides
nmap <F4> :IndentGuidesToggle<cr>

" plasticboy/vim-markdown
let g:vim_markdown_folding_disabled = 1

" reedes/vim-lexical
augroup lexical
    autocmd!
    autocmd FileType plaintex call lexical#init()
augroup END

" scrooloose/nerdcommenter
let g:NERDSpaceDelims = 1

" scrooloose/nerdtree
nmap <F9> :NERDTreeToggle<cr>

" scrooloose/syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" SirVer/ultisnips
let g:UltiSnipsExpandTrigger = '<TAB>'
let g:UltiSnipsJumpForwardTrigger = '<TAB>'

" Shougo/neocomplete.vim
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
inoremap <expr><TAB>  pumvisible() ? '\<C-n>' : '\<TAB>'
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" terryma/vim-multiple-cursors

" thinca/vim-quickrun
nmap <F5> :QuickRun<cr>

" tpope/vim-fugitive

" tpope/vim-surround

" vim-airline/vim-airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

" wellle/targets.vim
