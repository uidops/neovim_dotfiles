call plug#begin('~/.config/nvim/plugged')

	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'

	Plug 'dikiaap/minimalist'
	Plug 'mhinz/vim-startify'

	Plug 'https://github.com/junegunn/vim-github-dashboard.git'
	Plug 'itchyny/vim-gitbranch'

	Plug 'ryanoasis/vim-devicons'

	Plug 'godlygeek/tabular'
 	Plug 'plasticboy/vim-markdown'
 	Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
	
	Plug 'jiangmiao/auto-pairs'
	Plug 'dense-analysis/ale'

	Plug 'jmcantrell/vim-virtualenv'
	
	Plug 'vim-scripts/indentpython.vim'
	Plug 'davidhalter/jedi-vim'
	Plug 'zxqfl/tabnine-vim'

	Plug 'frazrepo/vim-rainbow'
	
	Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
	Plug 'junegunn/fzf.vim'

	Plug 'junegunn/vim-easy-align'

	Plug 'sheerun/vim-polyglot'
	Plug 'https://github.com/McSinyx/vim-octave.git', {'for': 'octave'}
	
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'neoclide/coc-yaml', {'do': 'yarn install --frozen-lockfile'}
	Plug 'neoclide/coc-json', {'do': 'yarn install --frozen-lockfile'}

call plug#end()
