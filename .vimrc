
" Leader key to add extra key combinations
let mapleader = ' '
let g:mapleader = ' '

"======================================
" Plugin list:
"======================================

call plug#begin()
 
" Поддержка русского языка при переключении режимов
Plug 'lyokha/vim-xkbswitch'

" Use release branch (recommend)
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Python wrapvirtualenv
Plug 'jmcantrell/vim-virtualenv'

 " Темы                                      
Plug 'morhetz/gruvbox'                 " Gruvbox
Plug 'tomasr/molokai'                  " Molokai
Plug 'NLKNguyen/papercolor-theme'

" Управление обрамляющими символами
Plug 'tpope/vim-surround'
" Плавный скроллинг
Plug 'yuttie/comfortable-motion.vim'
" навигация по буквенным символам
Plug 'easymotion/vim-easymotion'
" много функций в сочетании с [ и ]
Plug 'tpope/vim-unimpaired'
" простые коментарии
Plug 'tpope/vim-commentary'
" команды git
Plug 'tpope/vim-fugitive'
" команды Unix из командной строки
Plug 'tpope/vim-eunuch'
" авто настройка отступов
" Plug 'tpope/vim-sleuth'
" команды GitHub
Plug 'tpope/vim-rhubarb'
" повтор с точкой для плагинов
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-vinegar'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'markonm/hlyank.vim'              " подсветить скопированное

Plug 'godlygeek/tabular'               " выравнивание
Plug 'junegunn/vim-easy-align'
Plug 'junegunn/goyo.vim'               " дзен режим

Plug 'luochen1990/rainbow'



Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

Plug 'vitalk/vim-simple-todo'

call plug#end()

set completeopt=menu,menuone,preview,noselect,noinsert

"======================================
" Plugin settings:
"======================================
"======================================
" Netrw settings:
"======================================
" let g:netrw_banner = 0
" let g:netrw_liststyle = 3
" let g:netrw_browse_split = 4
" let g:netrw_altv = 1
" let g:netrw_winsize = 25
" augroup ProjectDrawer
"   autocmd!
"   autocmd VimEnter * :Vexplore
" augroup END

"======================================
" Markdown settings:
"======================================

" set to 1, nvim will open the preview window after entering the markdown buffer
" default: 0
let g:mkdp_auto_start = 0

" set to 1, the nvim will auto close current preview window when change
" from markdown buffer to another buffer
" default: 1
let g:mkdp_auto_close = 1

" set to 1, the vim will refresh markdown when save the buffer or
" leave from insert mode, default 0 is auto refresh markdown as you edit or
" move the cursor
" default: 0
let g:mkdp_refresh_slow = 1

" set to 1, the MarkdownPreview command can be use for all files,
" by default it can be use in markdown file
" default: 0
let g:mkdp_command_for_global = 0

" set to 1, preview server available to others in your network
" by default, the server listens on localhost (127.0.0.1)
" default: 0
let g:mkdp_open_to_the_world = 0

" use custom IP to open preview page
" useful when you work in remote vim and preview on local browser
" more detail see: https://github.com/iamcco/markdown-preview.nvim/pull/9
" default empty
let g:mkdp_open_ip = ''

" specify browser to open preview page
" for path with space
" valid: `/path/with\ space/xxx`
" invalid: `/path/with\\ space/xxx`
" default: ''
let g:mkdp_browser = ''

" set to 1, echo preview page url in command line when open preview page
" default is 0
let g:mkdp_echo_preview_url = 0

" a custom vim function name to open preview page
" this function will receive url as param
" default is empty
let g:mkdp_browserfunc = ''

" options for markdown render
" mkit: markdown-it options for render
" katex: katex options for math
" uml: markdown-it-plantuml options
" maid: mermaid options
" disable_sync_scroll: if disable sync scroll, default 0
" sync_scroll_type: 'middle', 'top' or 'relative', default value is 'middle'
"   middle: mean the cursor position alway show at the middle of the preview page
"   top: mean the vim top viewport alway show at the top of the preview page
"   relative: mean the cursor position alway show at the relative positon of the preview page
" hide_yaml_meta: if hide yaml metadata, default is 1
" sequence_diagrams: js-sequence-diagrams options
" content_editable: if enable content editable for preview page, default: v:false
" disable_filename: if disable filename header for preview page, default: 0
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
    \ 'disable_filename': 0,
    \ 'toc': {}
    \ }

" use a custom markdown style must be absolute path
" like '/users/username/markdown.css' or expand('~/markdown.css')
let g:mkdp_markdown_css = ''

" use a custom highlight style must absolute path
" like '/Users/username/highlight.css' or expand('~/highlight.css')
let g:mkdp_highlight_css = ''

" use a custom port to start server or empty for random
let g:mkdp_port = ''

" preview page title
" ${name} will be replace with the file name
let g:mkdp_page_title = '「${name}」'

" recognized filetypes
" these filetypes will have MarkdownPreview... commands
let g:mkdp_filetypes = ['markdown']

" set default theme (dark or light)
" By default the theme is define according to the preferences of the system
let g:mkdp_theme = 'light'

"Rainbow
let g:rainbow_active = 1

" Coc settings
" -----------------------------------
" Всегда показывать строку для знаков слева от номера строик
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction


" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Run the Code Lens action on the current line.
nmap <leader>cl  <Plug>(coc-codelens-action)


" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocActionAsync('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocActionAsync('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.

" Mappings for CoCList
" Show all diagnostics.
nnoremap  <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>

" Autocometition off on FileTypes
autocmd FileType markdown let b:coc_suggest_disable = 1


" EasyAlign settings and map
" __________________________

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)




" ============================================================

" Если не GUI vim устанавливать 256 цветов в терминале
if !has('gui_running')
 set t_Co=256
endif


" XKB-Switch - включить
let g:XkbSwitchEnabled = 1


" comfortable-motion

" let g:comfortable_motion_scroll_down_key = "j"
" let g:comfortable_motion_scroll_up_key   = "k"



"======================================
" User Interface
"======================================

" Установить темный фон
set background=dark


"======================================
" Основные настройки
"======================================

" Disable vi compatibility
set nocompatible
" Lines of memory to remember
set history=1000

" Time delay on <Leader> key
set timeoutlen=500 ttimeoutlen=100
" Слишком паузы большие когда печатаешь
autocmd BufEnter * if &buftype=="terminal" | set timeoutlen=50 |  endif
    
autocmd BufLeave * if &buftype=="terminal" | set timeoutlen=500|  endif


" Update time
set updatetime=250

" Open help in a vertical window
cnoreabbrev h vert help
" Set inc/dec
set nrformats-=octal

" Разрешить курсору за крайний символ в строке
set virtualedit=onemore

" Set X lines to the cursor when moving vertically
set scrolloff=10
" Show command keys pressed
set showcmd

" Enable the WiLd menu
set wildmenu

" Show the Wild menu as popup
set wildoptions=pum

" Show the current position
set ruler

" Command bar height
set cmdheight=2

" Backspace works on Insert mode
set backspace=eol,start,indent

" Don't redraw while executing macros (good performance config)
set lazyredraw

" Show matching brackets when text indicator is over them
set showmatch

" How many tenths of a second to blink when matching brackets
set matchtime=2

" No annoying sound on errors
set noerrorbells
set novisualbell

" Mouse
set mouse=a

" Highlight cursor line and cursor column
set cursorline
set nocursorcolumn

" Always show the status line
" set laststatus=2

" Change the cursor shape
let &t_SI = "\<Esc>[5 q"
let &t_SR = "\<Esc>[3 q"
let &t_EI = "\<Esc>[1 q"

" Syntax highlighting
syntax enable

" Color scheme
colorscheme PaperColor

" Disable swap files
set noswapfile

" No backup (use Git instead)
set nobackup

" Prevents automatic write backup
set nowritebackup

" Use UTF-8 as default encoding
set encoding=utf8

" Use Unix as the standard file type
" set fileformats=unix,dos,mac

" Autoread a file when it is changed from the outside
cnoreabbrev help vert help

set autoread

au FocusGained,BufEnter * checktime

" Enable filetype plugins
filetype plugin on
filetype indent on

" Allow us to use Ctrl-s and Ctrl-q as keybinds
" Restore default behaviour when leaving Vim.
" silent !stty -ixon
" autocmd VimLeave * silent !stty ixon

" Buffer hidden when it is abandoned
set hidden

" Ignore case when autocompletes when browsing files
set fileignorecase


" Remember info about open buffers on close
set viminfo^=%

" " Enable autoindent & smartindent
set autoindent
set smartindent

" " Use tabs, no spaces
set expandtab

" " Be smart when using tabs
set smarttab

" " Tab size (in spaces)
set shiftwidth=4
set tabstop=4

" Specify which commands wrap to another line
set whichwrap+=<,>,h,l

" Wrap lines into the window
set wrap

" Don't break the words
" Only works if I set nolist (F6)
set linebreak

" Stop automatic wrapping
set textwidth=100

" Show line numbers
set number

" Set relative line numbers
set relativenumber


" относительные номера строк не видны в режиме вставки
augroup every
  autocmd!
  au InsertEnter * set norelativenumber
  au InsertLeave * set relativenumber
augroup END

" при перемещении вверх/вниз считает строку, разбитую на несколько линий как одну
nnoremap <expr> k (v:count == 0 ? 'gk' : 'k')
nnoremap <expr> j (v:count == 0 ? 'gj' : 'j')

autocmd BufReadPost *
	\ if line("'\"") > 0 && line("'\"") <= line("$") |
	\   exe "normal! g`\"" |
	\ endif

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Search, wrap around the end of the buffer
set wrapscan

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" For regular expressions turn magic on
set magic

" Maximum amount of memory in Kbyte used for pattern matching
set maxmempattern=1000



" Свертка
set foldmethod=indent
set foldnestmax=3
set nofoldenable


" Add a bit extra margin to the left
set foldcolumn=2

" Показывать колонну на 100 символе строк (по счёту)
" set colorcolumn=100

" Подсвечивать строку на которой находится курсор
set cursorline
" Прекратить подсвечивать её при переходе в режим INSERT
autocmd InsertEnter,InsertLeave * set cursorline!


" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
vnoremap <silent> # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>

" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>


" Delete trailing white space on save, useful for some filetypes ;)
fun! CleanExtraSpaces()
    let save_cursor = getpos(".")
    let old_query = getreg('/')
    silent! %s/\s\+$//e
    call setpos('.', save_cursor)
    call setreg('/', old_query)
endfun

if has("autocmd")
    autocmd BufWritePre *.txt,*.js,*.py,*.wiki,*.sh,*.coffee :call CleanExtraSpaces()
endif

" Don't close window, when deleting a buffer
command! Bclose call <SID>BufcloseCloseIt()
function! <SID>BufcloseCloseIt()
    let l:currentBufNum = bufnr("%")
    let l:alternateBufNum = bufnr("#")

    if buflisted(l:alternateBufNum)
        buffer #
    else
        bnext
    endif

    if bufnr("%") == l:currentBufNum
        new
    endif

    if buflisted(l:currentBufNum)
        execute("bdelete! ".l:currentBufNum)
    endif
endfunction

" активировать .vimrc после сохранения файла
autocmd! bufwritepost ~/.vimrc source ~/.vimrc

" remap highlited search of current word with * and # to stay in place
nnoremap * *``
nnoremap # #``

" Splits open more natural
set splitbelow
set splitright

" set Vim localization language
set langmenu=en_US
let $LANG = 'en_US'

" Переключатель режима копирования/вставки - только Vim и общий буфер обмена
if exists("*ToggleClipBoard") == 0
	function ToggleClipBoard()
		if &clipboard == ""
			set clipboard=unnamed
			echo "System clipboard ON"
		else
			echo "Vim only clipboard ON"
			set clipboard=""
		endif
	endfunction

	command ToggleClipBoard call ToggleClipBoard()
endif

nmap <F7> :ToggleClipBoard<CR>


"==========================================================================
" Status Line
"==========================================================================

autocmd User CocStatusChange redrawstatus

set laststatus=2                                        " Enable the statusline
set statusline=%!ActiveStatus()                         " Style it

" режим отображени статуса virualenv
let g:virtualenv_stl_format = ' (%n) '


function! ActiveStatus() abort                          " When in the active window
    let statusline=""                                   " Initialize it

    let statusline.="%{FugitiveStatusline()}\ " 
    let statusline.="%{virtualenv#statusline()}"
    let statusline.="%F\ "                 " Full-path to current buffer
    let statusline.="%m"                                " Modified flag:
    let statusline.="%#NonText#\ \ %="                  " Show Git branch, if applicable
    let statusline.="%{coc#status()}\ \ " " Switch to right-side
    " let statusline.="%{StatusDiagnostic()}\ \ " " Switch to right-side
    let statusline.="%#StatusLine#\ %p%%\ %y\ "                      " Filetype
    let statusline.="%"                                 " Color change (see :hi)
    let statusline.="\|%2l\:%2c\|"                      " Line and column
    let statusline.="%#SpellBad#%{&spell?'[SPELL]':''}" " Spell flag
    let statusline.="%r"                                " Read-only flag
    return statusline
endfunction

function! PassiveStatus() abort                         " When in a non-active window
    let statusline=""                                   " Initialize it
    let statusline.="%#StatusLineNC#%m"                 " Modified flag
    let statusline.="%F/"                               " Full-path to current buffer
    let statusline.="\ \ "                              " Show Git branch, if applicable
    let statusline.="%=\ "                              " Switch to right-side
    let statusline.="%{StatusDiagnostic()}\ \ " " Switch to right-side
    let statusline.="%p%%\ %y\ "                        " Filetype
    let statusline.="\|%4l\:%2c\|"                      " Line and column
    let statusline.="%#SpellBad#%{&spell?'[SPELL]':''}" " Spell flag
    let statusline.="%r"                                " Read-only flag
    return statusline
endfunction

 augroup user_statusline                                 " Change based on active window
     autocmd!
     autocmd WinEnter * setlocal statusline=%!ActiveStatus()
     autocmd WinLeave * setlocal statusline=%!PassiveStatus()
 augroup END

function! StatusDiagnostic() abort
  let info = get(b:, 'coc_diagnostic_info', {})
  if empty(info) | return '' | endif
  let msgs = []
  if get(info, 'error', 0)
    call add(msgs, 'E:' . info['error'])
  endif
  if get(info, 'warning', 0)
    call add(msgs, 'W:' . info['warning'])
  endif
  return join(msgs, ' '). ' ' . get(g:, 'coc_status', '')
endfunction

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Turn persistent undo on 
"    means that you can undo even when you close a buffer/VIM
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
try
    set undodir=~/.vim_runtime/temp_dirs/undodir
    set undofile
catch
endtry

" TODO list fast command
command! Todo :e TODO.md
nnoremap <Leader><Esc> :Todo<CR>

" # Disable default key bindings
let g:simple_todo_map_keys=0

" # Map your keys
nnoremap <Leader>I <Plug>(simple-todo-new)
nnoremap <Leader>i <Plug>(simple-todo-new-start-of-line)
nnoremap <Leader>o <Plug>(simple-todo-below)
nnoremap <Leader>O <Plug>(simple-todo-above)
nnoremap <Leader>x <Plug>(simple-todo-mark-switch)



set spelllang=en,ru           " Выбор языков словаря
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Spell checking
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Pressing space-ss will toggle and untoggle spell checking
map <leader>ss :setlocal spell!<cr>

