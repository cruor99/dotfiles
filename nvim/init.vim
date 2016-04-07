source $HOME/.config/nvim/bundles.vim


"show whitespace must come before colorscheme

autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
au InsertLeave * match ExtraWhitespace /\s\+$/

syntax on
colorscheme wombat256mod
set background=dark

set ignorecase
set smartcase
set noeol
set expandtab
set softtabstop=4
set shiftwidth=4
set shiftround
set noswapfile
set noshowmode
set laststatus=2

let mapleader = " "

set pastetoggle=<F2>
set clipboard=unnamed

noremap <C-n> :nohl<CR>
vnoremap <C-n> :nohl<CR>
inoremap <C-n> :nohl<CR>

map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

vnoremap < <gv
vnoremap > >gv

filetype off
filetype plugin indent on

set number
set relativenumber
set tw=79
set nowrap
set fo-=t
set colorcolumn=80
highlight ColorColumn ctermbg=233

"Plugin stuff

autocmd BufWritePost *.py call Flake8()
"vim-powerline
set laststatus=2

"Unite config
let g:unite_source_history_yank_enable = 1
call unite#filters#matcher_default#use(["matcher_fuzzy"])
nnoremap <leader>y :<C-u>Unite -no-split -buffer-name=yank    history/yank<cr>
nnoremap <leader>g :<C-u>Unite -no-split -buffer-name=files   -start-insert file_rec/async:!<cr>
nnoremap <leader>G :<C-u>Unite -no-split -buffer-name=files   file_rec/async:!<cr>
"current buffers
nnoremap <leader>f :<C-u>Unite -no-split -quick-match buffer<cr>
nnoremap <leader>F :<C-u>Unite -no-split -start-insert buffer<cr>
nnoremap <leader>r :<C-u>Unite -no-split -buffer-name=recent file_mru directory_mru<cr>
nnoremap <leader>e :<C-u>Unite -no-split -buffer-name=files   -start-insert file<cr>
nnoremap <leader>t :<C-u>TagbarOpen<cr>
nnoremap <leader>gg :<C-u>UniteClose<cr>

"jedi-vim
let g:jedi#usages_command = "<Leader>z"
let g:jedi#popup_on_dot = 0
let g:jedi#popup_select_first = 0
map <Leader>b 0import ipdb; ipdb.set_trace() # BREAKPOINT<C-c>

set completeopt=longest,menuone
function! OmniPopup(action)
    if pumvisible()
        if a:action == "j"
            return "\<C-N>
        elseif a:action == "k"
            return "\C-P>
        endif
    endif
    return a:action
endfunction

inoremap <silent><C-j> <C-R>=OmniPopup("j")<CR>
inoremap <silent><C-k> <C-R>=OmniPopup("k")<CR>


"vim -airline
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#show_tabs = 1
let g:airline#extensions#tabline#tab_nr_type = 1 " tab number
let g:airline#extensions#tabline#show_tab_nr = 1

"nerdtree
nnoremap <leader>pt :NERDTreeToggle<CR>
