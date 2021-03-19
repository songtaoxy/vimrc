set number

"""""""""
"  j,k  "
"""""""""
" j k 是面对实际行的； gj,gk 是真的虚拟行的
nnoremap k gk
nnoremap gk k
nnoremap j gj
nnoremap gj j


"""""""""
"  字符集  "
"""""""""
" vim  中文无法显示，显示多国语言.
"set fileencodings=utf-8,gbk,ucs-bom,cp936
"set encoding=gbk
set encoding=utf-8
set termencoding=utf-8
set fileencoding=utf-8  "指的是, 文件以utf-8编码集保存.
set fileencodings=ucs-bom,utf-8,gbk,cp936,gb18030,big5,euc-jp,euc-kr,latin1


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                    剪切板                                     "
"                                    mac 中, 使用command x/c/v
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
vmap <Command-x> :!pbcopy<CR>
vmap <Command-c> :w !pbcopy<CR><CR>


""""""""
"  %s  "
""""""""
"在substitute命令中, 修正&命令: 将& 替代 &&
nnoremap & :&&<CR>
xnoremap & :&&<CR>


"共享剪切板
set clipboard+=unnamed

" 文件被改动时自动载入
set autoread

" 顶部底部保持3行距离
set scrolloff=3

set ai  "强烈推介，自动缩进
set si  "智能缩进

"自动更新读入配置
autocmd! bufwritepost vimrc source ~/.vimrc

" 标尺
set ruler

"设置换行格式
set ffs=unix,dos,mac




"""""""""""""""""""""""""
"  window size default  "
"""""""""""""""""
"窗口大小设置
"lines大小不能设置, 否则错误.
"set lines=30
set columns=80
"设定行间距
set linespace=5
"每行多少字符
set textwidth=78


""""""""""""""
"  显示相关符号
"  比如换行符等"
""""""""""""""
" set list


""""""""""""
"  search  "
""""""""""""
"查询时非常方便，如要查找book单词，当输入到/b时，会自动找到第一
"个b开头的单词，当输入到/bo时，会自动找到第一个bo开头的单词，依
"次类推，进行查找时，使用此设置会快速找到答案，当你找要匹配的单词
"时，别忘记回车
"set incsearc



""""""""""
"  自动缩进  "
""""""""""
set autoindent
"依据上面的对起格式，智能的选择对起方式，对于类似C语言编写上很有用
set smartindent
"第一行设置tab键为4个空格，第二行设置当行之间交错时使用4个空格
set tabstop=4
set shiftwidth=4
"设置匹配模式，类似当输入一个左括号时会匹配相应的那个右括号
set showmatch
"去除vim的GUI版本中的toolbar
set guioptions-=T
"当vim进行编辑时，如果命令错误，会发出一个响声，该设置去掉响声
"set vb t_vb=
"在编辑过程中，在右下角显示光标位置的状态行



""""""""""""
"  vim-vi  "
""""""""""""
"去掉讨厌的有关vi一致性模式，避免以前版本的一些bug和局限
set nocompatible

"""""""""""""
"  history  "
"""""""""""""
set history=500


""""""""""""
"  backup  "
""""""""""""
"设置vim不进行自动备份
set nobackup
set nowritebackup

"将undo 和备份文件统一写到.undodir文件夹中，防止其分散
"undodir=~/.undodir
set noundofile
set noswapfile


"修改一个文件后，自动进行备份，备份的文件名为原文件名加“~“后缀
if has("vms")
set nobackup
else
"set backup
endif

""""""""""
"  自动保存  "
""""""""""
set autowrite


"""""""""""""""
"  突出显示当前行&列  "
"""""""""""""""
" 突出显示当前行
"set cursorline
" 突出显示当前列
"set cursorcolumn
"设置光标样式为竖线vertical bar
" Change cursor shape between insert and normal mode in iTerm2.app
"if $TERM_PROGRAM =~ "iTerm2"
"let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
"let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
"endif


""""""""""
"  自动折叠  "
""""""""""
" 不自动折叠
"vim-latex 代码禁用折叠
"set nofoldenable
"set foldlevel=manual " 手动v折叠
let g:tex_fold_enabled=0
set foldenable              " 开始折叠
"set foldmethod=syntax       " 设置语法折叠
set foldcolumn=0            " 设置折叠区域的宽度
setlocal foldlevel=1        " 设置折叠层数为
set foldlevelstart=99       " 打开文件是默认不折叠代码

"set foldclose=all          " 设置为自动关闭折叠
"用空格键来开关折叠
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR> 
"set Tex_FoldedSections=""
"set Tex_FoldedEnvironments=""
"set Tex_FoldedMisc=""

map <c-f> :<c-up>
map <c-b> :<c-down>

" 设置空白字符的视觉提示
set list listchars=extends:❯,precedes:❮,tab:▸\ ,trail:˽

