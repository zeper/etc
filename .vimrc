scripte utf-8

" VIM SETTING

set nocompatible 
set sc 

" STATUS BAR SETTING
set ls=2
set statusline=%<%F%h%m%r%h%w%y\ %{strftime(\"%Y/%m/%d-%H:%M\")}%=\ col:%c%V\ ascii:%b\ pos:%o\ lin:%l\,%L\ %P
set sm 

"set encoding=utf-8

" INDENT
set autoindent
set cindent 
set smartindent 
syntax on

" SET TAB
"set expandtab
set tabstop=4
set shiftwidth=4
set smarttab

set showmatch " (), {}, []괄호 매치를 보여준다

"set textwidth=79 
set wrap 
set nuw=5
set nowrap 
set nowrapscan 
set nobackup 
set visualbell 
set ruler 
set number
set ic 
set history=1000
set novisualbell


set background=dark
set foldmethod=syntax


"set backspace=indent,eol,start
"set joinspaces
"set incsearch
"set background=dark








" CTAGS
"set tags+=/data1/minto/work/gsoap/gsoap-2.8/tags
"set tags+=/data1/minto/work/gsoap/gsoap-2.8/gsoap/tags
"set tags+=/data1/minto/work/onvif_test/skel/tags
"set tags+=/data1/minto/onvif/tags
set tags+=/data1/minto/filesys_ipx/NFDVR/tags
set tags+=/data1/minto/gsoap_onvif/pc_2.8.17/build/tags
set tags+=/data1/minto/gsoap_onvif/pc_2.8.17/gsoap-2.8/tags


" CSCOPE
set csprg=/usr/bin/cscope
set csto=0 "cscope DB serch first
set cst "cscope DB tag DB search
set nocsverb "verbose off

"cs add ~/wsdl
cs add ~/filesys_ipx/NFDVR/cscope.out
set csverb


" KEY MAP

"Tag List 환경설정
filetype on "vim filetype on
nmap <F7> :TlistToggle<CR> "F7 key = Tag List Toggling
let Tlist_Ctags_Cmd = "/usr/bin/ctags"  "ctags 프로그램 위치
let Tlist_Inc_Winwidth = 0 "window width change off
let Tlist_Exit_OnlyWindow = 0 "tag/file 선택완료 시 taglist 
let Tlist_Auto_Open = 0
let Tilist_Use_Right_Window = 1

"Source Explorer 환경설정
nmap <F8> :SrcExplToggle<CR> "F8key=SrcExplToggling
nmap <C-H> <C-W>h "왼쪽창으로이동
nmap <C-J> <C-W>j "하단(preview) 창으로 이동
nmap <C-K> <C-W>k "상단창으로이동
nmap <C-L> <C-W>l "오른쪽 창으로 이동
let g:SrcExpl_winHeight=8 "SrcExpl 윈도우 높이 지정
let g:SrcExpl_refreshTime=100 "refreshingtime=100ms
let g:SrcExpl_jumpKey="<ENTER>" "해당definition으로 jump
let g:SrcExpl_gobackKey="<SPACE>" "back 
let g:SrcExpl_isUpdateTags=0 "tag file update=off

"NERD Tree
let NERDTreeWinPos="right" "NERD Tree위치 = 왼쪽
nmap <F9> :NERDTreeToggle<CR> 

