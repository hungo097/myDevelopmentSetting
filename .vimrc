".vimrc
"------------------------------------------------------------------------- 
"                           VIM SETTING
"------------------------------------------------------------------------- 
syntax on
"set background=dark
set laststatus=2
set backspace=indent,eol,start      "設定backspace工作方式
set tabstop=4                       "設定tab寬度
set shiftwidth=4                    "設定自動對齊空格數
set softtabstop=4                   "設定按backup鍵可以一次刪除4個空格
set smarttab                        "根據文件其他地方縮排空格數來確認tab是多少空格
set expandtab                       "將tab鍵轉換成空格 需要tab則用Ctrl+v+tab
set noic                            "搜尋時分大小寫"
"set number                          "設定顯示行數
set nocompatible                    "關閉vi的一致性模式 避免以前版本的bug和侷限 
set ruler                           "設定顯示右下腳的狀態列 
set ru                              "設定顯示現在游標位置 
set hlsearch                        "設定高亮度搜尋
set confirm                         "設定vim會顯示各種確認動作
set autoindent                      "自動縮排
set incsearch                       "漸增模式搜尋 會依當時輸入的字串進行搜尋
set cursorline                      "設定游標整行會標註顏色
set showcmd                         "在狀態列顯示目前輸入command
set history=100                     "設定歷史紀錄為1000筆
set showmatch                       "設定輸入左括號會批配一個右括號
set ignorecase                      "設定搜尋時忽略大小寫
"set mouse=a                         "設定在vim中可以使用滑鼠
set clipboard=unnamedplus           "設定VIM剪貼簿與系統同步
" http://vim.wikia.com/wiki/Accessing_the_system_clipboard
set encoding=utf-8
scriptencoding utf-8
set termencoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set enc=utf-8

"highlight Search ctermfg=7 ctermbg=4
"highlight Comment ctermfg=darkcyan


"------------------------------------------------------------------------- 
"                           VUNDLE SETTING
"------------------------------------------------------------------------- 

"set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins")"
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'


"a Git wrapper so awesome, it should be illegal
Plugin 'tpope/vim-fugitive'

"A tree explorer plugin for vim. 
Plugin 'scrooloose/nerdtree'

"surround.vim: quoting/parenthesizing made simple
Plugin 'tpope/vim-surround'

"lean & mean status/tabline for vim that's light as air 
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

"precision color scheme for multiple applications (terminal, vim, etc.) with both dark/light modes
Plugin 'altercation/vim-colors-solarized'

"Simple tmux statusline generator with support for powerline symbols and
"vim/airline/lightline statusline integration
Plugin 'edkolev/tmuxline.vim'

"A code-completion engine for Vim
Plugin 'valloric/youcompleteme'

"A vim plugin to display the indention levels with thin vertical lines 
Plugin 'yggdroot/indentline'

"A (G)Vim plugin for exploring the source code based on "tags", and it works like the context window of "Source Insight". 
Plugin 'wesleyche/SrcExpl'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


"------------------------------------------------------------------------- 
"                           SOURCE EXPLORER SETTING
"------------------------------------------------------------------------- 


" // Set the height of Source Explorer window 
let g:SrcExpl_winHeight = 8 

" // Set 100 ms for refreshing the Source Explorer 
let g:SrcExpl_refreshTime = 100 

" // Set "Enter" key to jump into the exact definition context 
let g:SrcExpl_jumpKey = "<ENTER>" 

" // Set "Space" key for back from the definition context 
let g:SrcExpl_gobackKey = "<SPACE>" 

" // In order to avoid conflicts, the Source Explorer should know what plugins
" // except itself are using buffers. And you need add their buffer names into
" // below listaccording to the command ":buffers!"
let g:SrcExpl_pluginList = [ 
        \ "__Tag_List__", 
        \ "_NERD_tree_" 
    \ ] 

" // Enable/Disable the local definition searching, and note that this is not 
" // guaranteed to work, the Source Explorer doesn't check the syntax for now. 
" // It only searches for a match with the keyword according to command 'gd' 
let g:SrcExpl_searchLocalDef = 1 

" // Do not let the Source Explorer update the tags file when opening 
let g:SrcExpl_isUpdateTags = 0 

" // Use 'Exuberant Ctags' with '--sort=foldcase -R .' or '-L cscope.files' to 
" // create/update the tags file 
let g:SrcExpl_updateTagsCmd = "ctags --sort=foldcase -R ." 

" // Set "<F12>" key for updating the tags file artificially 
let g:SrcExpl_updateTagsKey = "<F12>" 

" // Set "<F3>" key for displaying the previous definition in the jump list 
let g:SrcExpl_prevDefKey = "<F3>" 

" // Set "<F4>" key for displaying the next definition in the jump list 
let g:SrcExpl_nextDefKey = "<F4>"

"------------------------------------------------------------------------- 
"                           INDENTLINE SETTING
"------------------------------------------------------------------------- 

" Vim
let g:indentLine_color_term = 239

" GVim
let g:indentLine_color_gui = '#A4E57E'

" none X terminal
let g:indentLine_color_tty_light = 7 " (default: 4)
let g:indentLine_color_dark = 1 " (default: 2)

" Background (Vim, GVim)
let g:indentLine_bgcolor_term = 202
let g:indentLine_bgcolor_gui = '#FF5F00'

":IndentLinesToggle 
"toggles lines on and off.

"------------------------------------------------------------------------- 
"                           SOLARIZED SETTING
"------------------------------------------------------------------------- 
"need to add below line in bashrc
"export TERM=xterm-256color
syntax enable
set background=dark
set t_Co=256
"default solarized color is 16
"reset to 256 to enable more color
let g:solarized_termcolors=256
"let g:solarized_contrast=high
"let g:solarized_visibility=high
"let g:airline_solarized_bg='dark'
"call togglebg#map("<F5>")
colorscheme solarized


"------------------------------------------------------------------------- 
"                           TMUXLINE SETTING
"------------------------------------------------------------------------- 

let g:tmuxline_powerline_separators = 0
":Tmuxline vim_statusline_1
" or
":Tmuxline vim_statusline_2
" or
":Tmuxline vim_statusline_3

"let g:airline#extensions#tmuxline#enabled = 0

"------------------------------------------------------------------------- 
"                           AIRLINE SETTING
"------------------------------------------------------------------------- 
" Install powerline-fonts Step
" mkdir .font/
" cd .font/
" git clone https://github.com/Lokaltog/powerline-fonts.git
" cd powerline-fonts
" ./install.sh

" use solarized dark theme
let g:airline_solarized_bg='dark'

" Enable powerline fonts
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
let g:airline_symbols = {}
endif

" Powerline symbols: unicode
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" Powerline symbols: powerline fonts
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''


" enable tabline
let g:airline#extensions#tabline#enabled = 1
" set left separator
let g:airline#extensions#tabline#left_sep = ' '
" set left separator which are not editting
let g:airline#extensions#tabline#left_alt_sep = '|'
" show buffer number
let g:airline#extensions#tabline#buffer_nr_show = 1

"let g:airline_section_b = '%{strftime("%c")}'
"let g:airline_section_y = 'BN: %{bufnr("%")}'

"------------------------------------------------------------------------- 
"                           MAP SETTING
"------------------------------------------------------------------------- 
"map <silent> <F2> <ESC>:q!<CR>
"map <silent> <F4> <ESC>:wq<CR>

" auto fill in 
"inoremap ( ()<Esc>i
"inoremap " ""<Esc>i
"inoremap ' ''<Esc>i
"inoremap [ []<Esc>i
"inoremap < <><Esc>i
"inoremap {{ {}<ESC>i
"inoremap {<CR> {<CR>}<Esc>ko
" <CR> mean enter

" force myself to not to use the error keys
"map <UP> <NOP>
"map <DOWN> <NOP>
"map <LEFT> <NOP>
"map <RIGHT> <NOP>
"inoremap <UP> <NOP>
"inoremap <DOWN> <NOP>
"inoremap <LEFT> <NOP>
"inoremap <RIGHT> <NOP>
"
"Nerdtree setting
nmap <F7> :NERDTreeToggle<CR>

"Source Explorer setting
nmap <F8> :SrcExplToggle<CR> 

imap jj <esc>

"------------------------------------------------------------------------- 
"                   PROGRAMMING SHORTCUTS
"------------------------------------------------------------------------- 


"------------------------------------------------------------------------- 
"                           VIM TIP
"------------------------------------------------------------------------- 
"delete the line which contain \"A word\"
":g/A word/d

"delete the line which without \"A WORD\"
":v/A WORD/d

"replace A word to B word
":s/A word/B word/g

