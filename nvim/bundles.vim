if has("vim_starting")
    if has("unix")
        let s:uname = system("uname -s")
        if s:uname == "Darwin\n"
            "Mac stuff here
            set runtimepath+=/Users/cruor/.config/nvim/bundle/neobundle.vim
            call neobundle#begin(expand("/Users/cruor/.config/nvim/bundle"))
        endif
        if s:uname == "Linux\n"
            let s:uname = system("echo -n \"$(uname)\"")
            "Linux stuff here
            set runtimepath+=/home/cruor/.config/nvim/bundle/neobundle.vim
            call neobundle#begin(expand("/home/cruor/.config/nvim/bundle"))
        endif
    endif
endif

NeoBundleFetch "Shougo/neobundle.vim"

NeoBundle "vim-airline/vim-airline"
NeoBundle "nvie/vim-flake8.git"
NeoBundle "scrooloose/nerdtree"
NeoBundle "davidhalter/jedi-vim"
NeoBundle "Shougo/unite.vim"
NeoBundle "Shougo/neomru.vim"
NeoBundle "mattn/gist-vim"
NeoBundle "mattn/webapi-vim" "git-vim dependency
NeoBundle 'Shougo/vimproc.vim', {
\ 'build' : {
\     'windows' : 'tools\\update-dll-mingw',
\     'cygwin' : 'make -f make_cygwin.mak',
\     'mac' : 'make -f make_mac.mak',
\     'linux' : 'make',
\     'unix' : 'make',
\    },
\ }
call neobundle#end()
filetype plugin indent on
NeoBundleCheck
