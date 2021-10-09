call plug#begin('~/.config/nvim/plugged')
    Plug 'vim-scripts/vimprj'
    Plug 'vim-scripts/DfrankUtil'
    Plug 'w0rp/ale'
    Plug 'rhysd/vim-clang-format'
    Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}
    Plug 'tpope/vim-surround'
    Plug 'jiangmiao/auto-pairs'
    Plug 'octol/vim-cpp-enhanced-highlight'
    Plug 'vim-scripts/indexer.tar.gz'
    Plug 'tikhomirov/vim-glsl'
    Plug 'vim-scripts/indentpython.vim'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'mhinz/vim-startify'
    Plug 'godlygeek/tabular'
    Plug 'plasticboy/vim-markdown'
    Plug 'iamcco/markdown-preview.nvim', {'do': {-> mkdp#util#install()}, 'for': ['markdown', 'vim-plug']}
    Plug 'frazrepo/vim-rainbow'
    Plug 'kaicataldo/material.vim', {'branch': 'main'}
    Plug 'ryanoasis/vim-devicons'
    Plug 'ObserverOfTime/coloresque.vim'
	Plug 'rust-lang/rust.vim'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'chrisbra/Colorizer'
    Plug 'wsdjeg/vim-assembly'
call plug#end()