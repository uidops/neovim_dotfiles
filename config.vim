set mouse=a
set number
set relativenumber
set hidden
set cursorline
set expandtab
set autoindent
set smartindent
set shiftwidth=4
set tabstop=4
set history=5000
set clipboard=unnamedplus
set nowb
set autoread
set scrolloff=8
set foldmethod=indent
set foldnestmax=3
set nofoldenable
set ignorecase
set incsearch
set smartcase
set hlsearch
set lazyredraw
set ttimeoutlen=10
set showmatch
set termguicolors
set showtabline=2
set guioptions-=e
set completeopt-=preview
set nofixendofline
set mat=0
set laststatus=2
set cindent
set nowrap
set history=1000
set backspace=indent,eol,start
autocmd VimEnter * ColorHighlight

set rnu
set background=dark
syntax on

set encoding=UTF-8
let g:airline_theme = "base16"
let g:material_theme_style = "ocean"
colorscheme material

command! -nargs=0 Prettier :CocCommand prettier.formatFile

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')
nnoremap <C-s> :w<CR>
nnoremap <C-Q> :wq<CR>

nmap <S-Up> v<Up>
nmap <S-Down> v<Down>
nmap <S-Left> v<Left>
nmap <S-Right> v<Right>
vmap <S-Up> <Up>
vmap <S-Down> <Down>
vmap <S-Left> <Left>
vmap <S-Right> <Right>
imap <S-Up> <Esc>v<Up>
imap <S-Down> <Esc>v<Down>
imap <S-Left> <Esc>v<Left>
imap <S-Right> <Esc>v<Right>

vmap <C-c> y<Esc>i
vmap <C-x> d<Esc>i
map  <C-v> pi
imap <C-v> <Esc>pi

let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-pairs',
  \ 'coc-tsserver',
  \ 'coc-eslint', 
  \ 'coc-prettier', 
  \ 'coc-json', 
  \ 'coc-python',
\]

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <c-space> coc#refresh()

inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gr <Plug>(coc-references)

nnoremap <silent> K :call <SID>show_documentation()<CR>

autocmd CursorHold * silent call CocActionAsync('highlight')

nmap <F2> <Plug>(coc-rename)

xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

nmap <leader>ac  <Plug>(coc-codeaction)
nmap <leader>qf  <Plug>(coc-fix-current)

xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

nmap <silent> <C-d> <Plug>(coc-range-select)
xmap <silent> <C-d> <Plug>(coc-range-select)

command! -nargs=0 Format :call CocAction('format')

command! -nargs=? Fold :call     CocAction('fold', <f-args>)

command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>i

nnoremap <M-Right> :bn<cr>
nnoremap <M-Left> :bp<cr>
nnoremap <c-x> :bp \|bd #<cr>

let g:ale_completion_enabled = 0
let g:ale_linters = {'python': ['flake8', 'pylint'], 'javascript': ['eslint']}

let $NVIM_TUI_ENABLE_TRUE_COLOR=1

let g:lightline = {'colorscheme': 'seoul256'}
let g:palenight_terminal_italics=1

augroup arch
autocmd!
autocmd BufReadPost * if line("'\"") > 0 && line ("'\"") <= line("$") | exe "normal! g'\"" | endif
augroup END


autocmd FocusGained,BufEnter,CursorHold,CursorHoldI * if mode() != 'c' | checktime | endif
autocmd FileChangedShellPost * echohl WarningMsg | echo "File changed on disk. Buffer reloaded." | echohl None
 
augroup arch
autocmd!
autocmd BufReadPost * if line("'\"") > 0 && line ("'\"") <= line("$") | exe "normal! g'\"" | endif
augroup END

let mapleader = ','

" copy
noremap <C-c> "+y

" paste
noremap <C-v> "+p

" cut
noremap <C-x> "+d

" paste in insert mode
inoremap <C-v> <Esc>"+pa
noremap j h
noremap k j
noremap l k
noremap č l

nnoremap ć <Esc>
nnoremap Ć <Esc>
inoremap ć <Esc>
inoremap Ć <Esc>
vnoremap ć <Esc>
vnoremap Ć <Esc>
cnoremap ć <Esc>
cnoremap Ć <Esc>
inoremap ć <Esc>l
inoremap Ć <Esc>l

nnoremap K 10j
nnoremap L 10k
vnoremap K 10j
vnoremap L 10k

noremap o o <Bs><Esc>
noremap O O <Bs><Esc>

nnoremap <leader>ev :vsplit $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>

noremap U <c-r>
noremap <c-r> <NOP>

nnoremap <Tab> >>_
nnoremap <S-Tab> <<_
vnoremap <Tab> >>_
vnoremap <S-Tab> <<_
 

nnoremap <F3> :set hlsearch!<CR>

if (has("nvim"))
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

if (has("termguicolors"))
  set termguicolors
endif
autocmd InsertEnter * :set nornu
autocmd InsertLeave * :set rnu
autocmd BufLeave * :set nornu
autocmd BufEnter * call SetRNU()

function! SetRNU()
    if(mode()!='i')
        set rnu 
    endif
endfunction

iab wiht with
iab whit with
iab ture true
iab flase false
iab wieght weight
iab hieght height
iab tihs this
iab mian main
iab funciton function
iab funcition function

noremap <leader><CR> :silent !gnome-terminal<CR>

let g:lightline = {
\   'colorscheme': 'palenight',
\   'active': {
\     'left':[ [ 'mode', 'paste' ],
\              [ 'gitbranch', 'readonly', 'filename', 'modified' ]
\     ]
\   },
\   'component': {
\     'lineinfo': '%3l:%-2v',
\   },
\   'component_function': {
\     'gitbranch': 'fugitive#head',
\   }
\ }

let g:lightline.separator = {
	\   'left': '', 'right': ''
\}

let g:lightline.subseparator = {
	\   'left': '', 'right': ''
\}

let g:lightline.tabline = {
  \   'left': [ ['tabs'] ],
  \   'right': [ ['close'] ]
\ }

noremap <C-n> :NERDTreeToggle<CR>
let g:NERDTreeQuitOnOpen = 1
let g:NERDTreeWinPos = "right"

let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
let g:UltiSnipsUsePythonVersion = 3

let g:ycm_show_diagnostics_ui = 0

let g:ycm_key_list_select_completion = ['<C-k>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-l>', '<Up>']
let g:SuperTabDefaulCompletionType = '<C-k>'

let g:ycm_confirm_extra_conf = 0

let g:ale_completion_enabled = 1

let g:ale_cpp_clang_executable = 'clang++'

let g:ale_linters = {
    \   'cpp': ['clang']
\}

let g:ale_cpp_clang_options = '-std=c++1z -O0 -Wextra -Wall -Wpedantic -I /usr/include/eigen3'

 
let g:clang_format#command = 'clang-format'
let g:clang_format#style_options = {
            \ "BreakBeforeBraces" : "Attach",
            \ "UseTab" : "Never",
            \ "IndentWidth" : 4,
            \ "ColumnLimit" : 100,
            \ "AccessModifierOffset" : -4,
            \ "AllowShortIfStatementsOnASingleLine" : "false",
            \ "AllowShortFunctionsOnASingleLine" : "false",
\}

inoremap <C-j> <Esc>:ClangFormat<CR>a
nnoremap <C-j> <Esc>:ClangFormat<CR>

nnoremap <F4> :A<CR>
inoremap <F4> <ESC>:A<CR>a

nnoremap <F2> :IH<CR>
inoremap <F2> <ESC>:IH<CR>
map <leader><leader>j <Plug>(easymotion-linebackward)
map <leader><leader>k <Plug>(easymotion-j)
map <leader><leader>l <Plug>(easymotion-k)
map <leader><leader>č <Plug>(easymotion-lineforward)
nnoremap <C-e> <C-]>

let g:indexer_disableCtagsWarning = 1


" =========== START SCREEN =============
let g:startify_session_dir = '~/.config/nvim/session'

let g:startify_lists = [
            \ { 'type': 'files',     'header': ['   Files']                        },
            \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
            \ { 'type': 'sessions',  'header': ['   Sessions']                     },
            \ { 'type': 'bookmarks', 'header': ['   Bookmarks']                    },
\]

let g:startify_session_autoload = 1
let g:startify_session_delete_buffers = 1
let g:startify_change_to_vcs_root = 1
let g:startify_fortune_use_unicode = 1
let g:startify_session_persistence = 1
let g:webdevicons_enable_startify = 1

let g:startify_bookmarks = [
            \ { 'i': '~/.config/i3/config' },
            \ '~/projects',
            \ '~/c-learning',
\]

let g:startify_enable_special = 0



" =========== Markdown plugins config ==========
let g:vim_markdown_folding_style_pythonic = 1
let g:mkdp_auto_start = 0
let g:mkdp_auto_close = 1
let g:mkdp_refresh_slow = 0
let g:mkdp_command_for_global = 0
let g:mkdp_open_to_the_world = 0
let g:mkdp_open_ip = ''
let g:mkdp_browser = ''
let g:mkdp_echo_preview_url = 0
let g:mkdp_browserfunc = ''

let g:mkdp_preview_options = {
            \ 'mkit': {},
            \ 'katex': {},
            \ 'uml': {},
            \ 'maid': {},
            \ 'disable_sync_scroll': 0,
            \ 'sync_scroll_type': 'middle',
            \ 'hide_yaml_meta': 1,
            \ 'sequence_diagrams': {},
            \ 'flowchart_diagrams': {},
            \ 'content_editable': v:false,
            \ 'disable_filename': 0
\}

let g:mkdp_markdown_css = ''
let g:mkdp_highlight_css = ''
let g:mkdp_port = ''
let g:mkdp_page_title = '「${name}」'
let g:mkdp_filetypes = ['markdown']

augroup commenting_blocks_of_code
  autocmd!
  autocmd FileType c,cpp,java,scala let b:comment_leader = '// '
  autocmd FileType sh,ruby,python   let b:comment_leader = '# '
  autocmd FileType conf,fstab       let b:comment_leader = '# '
  autocmd FileType tex              let b:comment_leader = '% '
  autocmd FileType mail             let b:comment_leader = '> '
  autocmd FileType vim              let b:comment_leader = '" '
augroup END

noremap <silent> ,cc :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
noremap <silent> ,cu :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>

autocmd BufRead,BufNewFile   *.c,*.h,*.java set noic cin noexpandtab