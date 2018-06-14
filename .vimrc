scripte utf-8

set nocompatible 		" 오리지날 VI와 호환하지 않음
set nobackup 			" 백업 파일을 안만듬
set history=1000 		"  vi 편집기록 기억갯수 .viminfo에 기록
set novisualbell		" 화면 깜빡이는 벨 사용하지 않음

" STATUS BAR SETTING
set ls=2
set ruler 				" 화면 우측 하단에 현재 커서의 위치(줄,칸) 표시
set number 				" 행번호 표시, set nu 도 가능
set statusline=[%n\]%<%f%h%m%r%h%w%y\ %{strftime(\"%Y/%m/%d-%H:%M\")}%=\ col:%c%V\ ascii:%b\ pos:%o\ lin:%l\,%L\ %P

" SET INDENT
syntax on 				"  구문강조 사용
filetype indent on 		" 파일 종류에 따른 구문강조
set autoindent  		" 자동 들여쓰기
set cindent 			" C 프로그래밍용 자동 들여쓰기
set smartindent 		" 스마트한 들여쓰기
"set showmatch			" 괄호 입력시 매칭되는 괄호를 보여준다

" SET ENCODING
set encoding=utf-8		" VIM 내부적으로 문자를 표현하는 방법 = enc
set termencoding=utf-8	" 터미널 인코딩 (키보드 입력값의 인코딩) = tenc

" SET TAB
"set expandtab 			" 탭대신 스페이스
set tabstop=4
set shiftwidth=4
set smarttab

" SET SEARCH
set hlsearch			" 검색어 강조, set hls 도 가능
set ignorecase			" 검색시 대소문자 무시, set ic 도 가능
set nowrapscan			" 검색할 때 문서의 끝에서 처음으로 안돌아감
set lbr
"set incsearch 			"  키워드 입력시 점진적 검색

" SET COLOR
set background=dark 	" 하이라이팅 lihgt / dark
colorscheme desert  	"  vi 색상 테마 설정

set numberwidth=5		" 줄번호 너비
set nowrap				" 자동으로 줄바꿈 표시


"set foldmethod=manual  " folds must be defined by entering commands (such as zf)
"set foldmethod=indent  " groups of lines with the same indent form a fold
set foldmethod=syntax   " folds are defined by syntax highlighting
"set foldmethod=expr    " folds are defined by a user-defined expression
"set foldmethod=maker   " special characters can be manually or automatically added to your text to flag the start and end of folds


" CSCOPE
set csprg=/usr/bin/cscope
set csto=0 		" cscope DB serch first
set cst 		" cscope DB tag DB search
set nocsverb 	" verbose off

cs add ./cscope.out
set csverb

" CSCOPE KEY MAP
"Find this C symbol
nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>

"Find this definition
nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>

"Find function called by this function
nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>

"Find functions calling this function
nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>

"Find this text string
nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>

"Find this egrep parttern
nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>

"Find this file
nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>

"Find files #including this file
nmap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
