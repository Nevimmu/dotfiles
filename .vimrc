if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'junegunn/goyo.vim'          " Center text
Plug 'plasticboy/vim-markdown'    " Markdown syntax
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
Plug 'dylanaraps/wal.vim'
Plug 'elzr/vim-json'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'lilydjwg/colorizer'
Plug 'preservim/nerdtree'
Plug 'raimondi/delimitmate'
Plug 'artanikin/vim-synthwave84'
Plug 'dhruvasagar/vim-table-mode'
Plug 'sirtaj/vim-openscad'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

set number relativenumber
set ignorecase
set termguicolors
colorscheme synthwave84
" colorscheme wal
set tabstop=2


" vim hardcodes background color erase even if the terminfo file does
" not contain bce (not to mention that libvte based terminals
" incorrectly contain bce in their terminfo files). This causes
" incorrect background rendering when using a color theme with a
" background color.
let &t_ut=''

" MarkdowPreview config
let g:mkdp_browser = 'surf'
let g:mkdp_auto_start = 1
let g:mkdp_port = ''
let g:mkdp_page_title = '「${name}」'
let g:mkdp_markdown_css = '/home/nevimmu/.config/markdown.css'
let g:mkdp_highlight_css = '/home/nevimmu/.cache/wal/colors.css'

" Vim-markdown
let g:vim_markdown_folding_disabled = 1

" NERDtree
map <C-n> :NERDTreeToggle<CR>
let NERDTreeMapActivateNode="l"
set termguicolors
let NERDTreeShowHidden=1
let g:NERDTreeWinPos = "left"

" Goyo
map <C-g> :Goyo<CR>
