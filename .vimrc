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
Plug 'iamcco/markdown-preview.nvim', {'tag': 'v0.0.9', 'do': 'cd app & yarn install'  }
Plug 'dylanaraps/wal.vim'
" List ends here. Plugins become visible to Vim after this call.
call plug#end()

set number relativenumber
colorscheme wal

" MarkdowPreview config
let g:mkdp_browser = 'surf'
let g:mkdp_auto_start = 1
let g:mkdp_port = ''
let g:mkdp_page_title = '「${name}」'
let g:mkdp_markdown_css = '/home/nevimmu/Documents/markdown.css'
let g:mkdp_highlight_css = '/home/nevimmu/.cache/wal/colors.css'

" Vim-markdown
let g:vim_markdown_folding_disabled = 1
