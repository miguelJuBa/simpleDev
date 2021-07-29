source $HOME/.config/nvim/vim-plug/plugins.vim

set number
set cursorline
set wildmenu
set showmatch
set incsearch
set hlsearch
set ttyfast
syntax on
set t_Co=256
let g:solarized_termcolors=256
set background=dark
colorscheme solarized

" Open fuzzy finder
nnoremap <C-p> :FuzzyOpen<CR>
nnoremap <C-f> :FuzzyGrep<CR>

" Open nerdtree
nnoremap <C-n> :NERDTreeToggle<CR>

" Rust language server
" Required for operations modifying multiple buffers like rename.
set hidden

let g:LanguageClient_serverCommands = {
    \ 'rust': ['~/.cargo/bin/rustup', 'run', 'stable', 'rls'],
    \ }

" note that if you are using Plug mapping you should not use `noremap` mappings.
nmap <F5> <Plug>(lcn-menu)
" Or map each action separately
nmap <silent>K <Plug>(lcn-hover)
nmap <silent> gd <Plug>(lcn-definition)
nmap <silent> <F2> <Plug>(lcn-rename)

" enable ncm2 for all buffers
autocmd BufEnter * call ncm2#enable_for_buffer()

" IMPORTANT: :help Ncm2PopupOpen for more information
set completeopt=noinsert,menuone,noselect

" Use <TAB> to select the popup menu:
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

