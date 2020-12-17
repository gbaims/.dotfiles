" Syntax
syntax enable                                     " Enable syntax highlight
syntax on                                         " Syntax on for vimwiki

" General options
set nocompatible                                  " Vim behavior, not vi
set encoding=utf-8                                " Use UTF-8 encoding
set nobackup                                      " Don't backup
set nowritebackup                                 " Write files in place
set noswapfile                                    " Don't use swap files (.swp)
set autoread                                      " Automatically save changes before switching buffers
set path+=**                                      " Find files in subdirectories easily
set wildmenu                                      " Show options in command mode

" History, Cursor, Rulers
set history=50                                    " Just remember last 50 commands
set laststatus=2                                  " Always display the status line
set ruler                                         " Show the cursor position all the time
set number                                        " Show line numbers
set relativenumber                                " Show relative line numbers
set showcmd                                       " Display incomplete commands
set nocursorline                                  " Don't highlight current line
set shell=$SHELL                                  " Use default shell

" Tabs and white spaces
set nowrap                                        " Don't wrap lines
set tabstop=2                                     " Tabs are always 2 spaces
set expandtab                                     " Expand tabs into spaces
set shiftwidth=2                                  " Reindent with 2 spaces (using <<)
set list                                          " Show invisible chars
set listchars=""                                  " Reset listchars
set list listchars=tab:»·,trail:·                 " Set listchars for tabs and trailing spaces

" Search
set hlsearch                                      " Highlight matches
set incsearch                                     " Incremental searching
set ignorecase                                    " Searches are case insensitive...
set smartcase                                     " ... unless they contain at least one capital letter

" Splits and Tabs
set splitbelow                                    " New windows below


" Plugins
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'itchyny/lightline.vim'
call plug#end()

" Colorscheme
set termguicolors
colorscheme dracula

" Lightline
set noshowmode
let g:lightline = { 'colorscheme': 'darcula' }
