"===================
"	Public
"===================
if has('mouse') 
   set mouse=a 
endif 
set cursorcolumn                 "��������и���(vim6.0����)
set cursorline                   "��������и���(vim6.0����)
set textwidth=80                 "����70���ַ����Զ�����
set guifont=Consolas:h13           "��������
set nocompatible       "��Ҫʹ��vi�ļ���ģʽ������vim�Լ���

"set syntax=on    "�����﷨����
syntax enable
syntax on

set noeb       "ȥ������������ʾ����
set confirm    "�ڴ���δ�����ֻ���ļ���ʱ�򣬵���ȷ��
set smartindent   "ΪC�����ṩ�Զ�����
set autoindent    "�Զ�����
set cindent
set tabstop=4      "Tab���Ŀ��
"set list                          "��ʾTab,���ڲ鿴����
"set listchars=tab:+.,trail:.

set expandtab	   "ʹ�ÿո����tab����Ϊ�����ڲ�ͬ�༭������ʾ��һ��
"set noexpandtab   "��Ҫ�ÿո�����Ʊ��
set softtabstop=4    "ͳһ����Ϊ4
set shiftwidth=4

set smarttab    "���кͶο�ʼ��ʹ���Ʊ��
set number  "��ʾ�к�
set ruler  "��ʾ�к�
set history=50   "��ʷ��¼��
set nobackup   "��ֹ������ʱ�ļ�
set noswapfile
set ignorecase     "�������Դ�Сд
"	set ic			"�������Դ�Сд
"set hlsearch   "�������ַ�����
set incsearch
set gdefault   "�����滻

"set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
"set fenc=utf-8

"set langmenu=zh_CN.UTF-8   "��������
"set helplang=cn
set fileencodings=utf-8,gbk,ucs-bom,cp936,unicode,latin-1   "�����ļ������б�
"set enc=utf-8   "��������
"set encoding=utf-8
"
" �ҵ�״̬����ʾ�����ݣ������ļ����ͺͽ��룩
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}
"set statusline=[%F]%y%r%m%*%=[Line:%l/%L,Column:%c][%p%%]
set laststatus=2  "������ʾ״̬��
set ruler             "�ڱ༭�����У������½���ʾ���λ�õ�״̬��
set cmdheight=1   "�����У���״̬���£��ĸ߶ȣ�Ĭ��Ϊ1��������2
set viminfo+=!   " ����ȫ�ֱ���
set iskeyword+=_,$,@,%,#,-   " �������·��ŵĵ��ʲ�Ҫ�����зָ�
set linespace=0   "�ַ���������������Ŀ
set wildmenu   "��ǿģʽ�е��������Զ���ɲ���
set backspace=2   "ʹ�ظ����backspace����������indent, eol, start��
set whichwrap+=<,>,h,l    "����backspace�͹�����Խ�б߽�
set mouse=a       "������buffer���κεط�ʹ����꣨����office���ڹ�����˫����궨λ��
set selection=exclusive
set selectmode=mouse,key
set report=0   "ͨ��ʹ��: commands������������ļ�����һ�б��ı��
"set shortmess=atI   "������ʱ����ʾ�Ǹ�Ԯ���������ͯ����ʾ(����Ӧ����ʾ)
set fillchars=vert:\ ,stl:\ ,stlnc:\   "�ڱ��ָ�Ĵ��ڼ���ʾ�հף������Ķ�
set showmatch   "������ʾƥ�������
set matchtime=5   "ƥ�����Ÿ�����ʱ�䣨��λ��ʮ��֮һ�룩
set scrolloff=3   "����ƶ���buffer�Ķ����͵ײ�ʱ����3�о���
"set path +=/usr/include "C����ͷ�ļ�����λ��
"========================
"	File types
"========================
filetype on    "����ļ�����
filetype plugin on    "�����ļ����Ͳ��
filetype plugin indent on   
filetype indent on    "Ϊ�ض��ļ�����������������ļ�
"setlocal omnifunc=javacomplete#Complete 
" python��Ҫ tab 
autocmd FileType python setlocal et | setlocal sta | setlocal sw=4
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete
autocmd FileType java set omnifunc=javacomplete#Complete

"===================
"	Colors
"===================
"colorscheme murphy 
"colorscheme desert
colorscheme murphy
"colorscheme devbox-dark-256
"colorscheme darkblue
"colorscheme darkburn
"colorscheme lucius
"colorscheme freya
"colorscheme skittles_dark
"

"===================
"	Key map
"===================
map <F4> :NERDTree<cr>
" �ֶ�ˢ���ļ�
map <F5> :e!<cr>    
map <F12> :TlistToggle<cr>
"������ģʽ�¹���ڴ������ƶ���ݼ�
nmap <S-l> :wincmd w<cr>
" ���� Ctrl + s ���浱ǰ�ļ�
" ����Ctrl+S������ʹ�ã�����Ҫ�޸�~/.bashrc�ļ�����������
" stty stop ''
map <silent><C-s> :update<CR>
inoremap <C-s> <ESC>:update<CR>a
"===================
"   Taglist
"===================
"if MySys() == "windows"                "�趨windowsϵͳ��ctags�����λ��
"	   let Tlist_Ctags_Cmd = 'ctags'
"elseif MySys() == "linux"              "�趨windowsϵͳ��ctags�����λ��
"	   let Tlist_Ctags_Cmd = '/usr/bin/ctags'
"endif
"let Tlist_Auto_Open=1                  "Ĭ�ϴ�taglist
let Tlist_Auto_Open=0               
let Tlist_Show_One_File = 1            "��ͬʱ��ʾ����ļ���tag��ֻ��ʾ��ǰ�ļ���
let Tlist_Exit_OnlyWindow = 1          "���taglist���������һ�����ڣ����˳�vim
let Tlist_Use_Right_Window = 1         "���Ҳര������ʾtaglist����

