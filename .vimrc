".vimrc
"------------------------------------------------------------------------- 
"                           VIM SETTING
"------------------------------------------------------------------------- 
syntax on
set laststatus=2
set t_Co=256
set background=dark
set backspace=indent,eol,start      "設定backspace工作方式
set tabstop=4                       "設定tab寬度
set shiftwidth=4                    "設定自動對齊空格數
set softtabstop=4                   "設定按backup鍵可以一次刪除4個空格
set smarttab                        "根據文件其他地方縮排空格數來確認tab是多少空格
set expandtab                       "將tab鍵轉換成空格 需要tab則用Ctrl+v+tab
set noic                            "搜尋時分大小寫"
"set number "設定顯示行數
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
"set mouse=a "設定在vim中可以使用滑鼠
set clipboard=unnamedplus           "設定VIM剪貼簿與系統同步
" http://vim.wikia.com/wiki/Accessing_the_system_clipboard
set encoding=utf-8
scriptencoding utf-8
set termencoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set enc=utf-8

highlight Search ctermfg=7 ctermbg=4
highlight Comment ctermfg=darkcyan

colorscheme desert


"------------------------------------------------------------------------- 
"                           MAP SETTING
"------------------------------------------------------------------------- 
map <silent> <F4> <ESC>:wq<CR>
map <silent> <F2> <ESC>:q!<CR>

" auto fill in 
inoremap ( ()<Esc>i
inoremap " ""<Esc>i
inoremap ' ''<Esc>i
inoremap [ []<Esc>i
inoremap < <><Esc>i
inoremap {{ {}<ESC>i
inoremap {<CR> {<CR>}<Esc>ko
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

