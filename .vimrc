  "for plugin manager vim-plug https://vi.stackexchange.com/questions/613/how-do-i-install-a-plugin-in-vim-vi
call plug#begin()
Plug 'https://github.com/tmhedberg/matchit' "HTML % matching
Plug 'https://github.com/vim-scripts/closetag.vim' "close HTML tags
Plug 'https://github.com/Townk/vim-autoclose' "autoclose (
Plug 'https://github.com/mattn/emmet-vim/' "dope vim plugin for html
call plug#end()

set nocompatible

filetype plugin indent on "detects filetypes, plugins and indentexpr
syntax on
let clj_highlight_builtins = 1 "for clojure
let g:clj_paren_rainbow = 1 "clojure rainbow parenthesis

"" Haskell stuff
au Bufenter *.hs compiler ghc " use ghc functionality for haskell files
"let g:haddock_browser = "/usr/bin/opera" " configures browser for haskell_doc.vim

" Emmet HTML plugin stuff
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall "only enables emmet if html

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal g'\"" | endif
endif

"simple flags
set nu 				" Shows line numbers.
set tabstop=2		" Default is 8, how much a tab indents.
set shiftwidth=2    "Default is 8, for consistency with tabstop <<
set expandtab 		"uses spaces for indendtation instead of tabs.
set ai              "autoindent
set showmatch		" Show matching brackets.
set noincsearch     " Does not find as type
set ignorecase      " Case insensitve search
set showcmd         " Shows commands as they are typed
set autochdir       " Location of current file is active working directory
colorscheme desert   " good colors: default, koehler, pablo, shine, desert
set nobackup        " so it doesn't spam ~ files
set writebackup     " temporary backup until file is written
set wrap        " visually wraps lines down, does not affect content
set nohlsearch
set autochdir
"fancy commands
autocmd FileType text setlocal textwidth=84 "if it is a text file, start new lines after textwidth is hit




" Uncomment the following to have Vim load indentation rules according to the
" detected filetype. Per default Debian Vim only load filetype specific
" plugins.
" down here to override set ai
if has("autocmd")
  filetype indent on
endif


" remapping for emmet #https://stackoverflow.com/questions/41617426/best-way-to-add-comments-in-html-closing-tag-with-vim
:inoremap <! <!--   --><Esc>gEviW
