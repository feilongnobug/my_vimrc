syntax enable
syntax on
colorscheme desert
set guifont=Oxygen\ Mono\ 12

set nu

set tabstop=4
set softtabstop=4
set shiftwidth=4

set autoindent
set cindent

set nocp "关闭vi兼容模式

"允许折叠
set foldenable
set foldmethod=manual "手动折叠

set nobackup "从不备份 

set cursorline "突出显示当前行

""自动将tab扩展成空格
set expandtab
"set noexpandtab

"switch case 对齐风格
set cino=g0,:0

"
" taglist
"


"set tags for dboceanbase
set tags=~/Desktop/workspace/dboceanbase/tags

"BufExplorer
"let g:bufExplorerDefaultHelp=0 "Do not show default help
let g:bufExplorerSortBy='mru' "sort by most recently used
let g:bufExplorerUseCurrentWindow=1 "Open in new window


"WinManager
let g:winManagerWindowLayout='FileExplorer,BufExplorer|TagList'
nmap wm :WMToggle<cr>

"Cscope
set cscopequickfix=s-,c-,d-,i-,t-,e-
"set cs for dboceanbase
:cs add ~/Desktop/workspace/dboceanbase/cscope.out ~/Desktop/workspace/dboceanbase
"set cs namp
nmap <C-_>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-_>i :cs find i ^<C-R>=expand("<cfile>")<CR><CR>
nmap <C-_>d :cs find d <C-R>=expand("<cword>")<CR><CR>

filetype plugin indent on "打开文件类型检测
set completeopt=longest,menu 
