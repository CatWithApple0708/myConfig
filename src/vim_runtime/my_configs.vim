""""""""""""""""""""""""""""""
" => Basic Setting
""""""""""""""""""""""""""""""
" 设置代码折叠
" set fdm=indent
set foldlevel=99


" 状态栏
set laststatus=2      " 总是显示状态栏
highlight StatusLine cterm=bold ctermfg=yellow ctermbg=blue
" 获取当前路径，将$HOME转化为~
function! CurDir()
	let curdir = substitute(getcwd(), $HOME, "~", "g")
	return curdir
endfunction
set statusline=[%n]\ %f%m%r%h\ \|\ \ pwd:\ %{CurDir()}\ \ \|%=\|\ %l,%c\ %p%%\ \|\ ascii=%b,hex=%b%{((&fenc==\"\")?\"\":\"\ \|\ \".&fenc)}\ \|\ %{$USER}\ @\ %{hostname()}\


set number
"inmap    <leader>j  :vertical resize -3<CR>
"nmap    <leader>k  :vertical resize +3<CR>

set mouse-=a
"输入保存
imap <F2> <ESC>:w<cr>
"配置颜色主题
" colorscheme vividchalk
highlight Search term=standout ctermbg=1 guibg=Red

"开启光亮光标行 
" set cursorline
"开启高亮光标列
set cursorcolumn
"改变光标
"

"Background
hi Normal  ctermfg=252 ctermbg=none

"Coding
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set fileencoding=utf-8
set termencoding=utf-8
set encoding=utf-8

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"use spaces instead of tabs
"set expandtab
"use tab instead of spaces
set noexpandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines


""""""""""""""""""""""""""""""
" => Map Key
""""""""""""""""""""""""""""""
"复制到系统剪贴板
map    <leader>y  "+y

"跳到上一个/下一个文件
"nmap    <leader>n   :bn<CR>
"nmap    <leader>p :bp<CR>

"切换目录到当前文件
" nnoremap <silent> <leader>. :cd %:p:h<CR>
nnoremap <leader>. :cd %:p:h<CR>

"输入模式下改变 hjkl为方向键
inoremap <c-l> <Right>
inoremap <c-h> <Left>
" inoremap <C-k> <up>
" inoremap <C-j> <Down>
inoremap <C-k> <C-n>
inoremap <C-j> <C-p>

inoremap <c-o> <ESC>o
inoremap <c-e> <ESC>


""""""""""""""""""""""""""""""
" => sdcet
"
""""""""""""""""""""""""""""""
function! Mydict()
let expl=system('sdcv -n ' .
	\  expand("<cword>"))
windo if
	\ expand("%")=="diCt-tmp" |
	\ q!|endif
25vsp diCt-tmp
setlocal buftype=nofile bufhidden=hide noswapfile
1s/^/\=expl/
1
endfunction
nmap <F5> :call Mydict()<CR>

"shift + f
" set keywordprg=sdcv
" nmap <C-t> : !sdcv <C-R>=expand("<cword>")<CR><CR>
nmap <F8> : !sdcv <CR>

""""""""""""""""""""""""""""""
" => Cscope
""""""""""""""""""""""""""""""


" cscope -Rbkq

" 这个命令会生成三个文件：cscope.out, cscope.in.out, cscope.po.out。
" 其中cscope.out是基本的符号索引，后两个文件是使用”-q”选项生成的，可以加快cscope的索引速度。
" 上面所用到的命令参数，含义如下：

" -R: 在生成索引文件时，搜索子目录树中的代码
" -b: 只生成索引文件，不进入cscope的界面
" -k: 在生成索引文件时，不搜索/usr/include目录
" -q: 生成cscope.in.out和cscope.po.out文件，加快cscope的索引速度



" s：查找C代码符号
" g：查找本定义
" d：查找本函数调用的函数
" c：查找调用本函数的函数
" t：查找本字符串
" e：查找本egrep模式
" f：查找本文件
" i：查找包含本文件的文件

nmap <C-@>s :cs find s <C-R>=expand("<cword>")<CR><CR> 
nmap <C-@>g :cs find g <C-R>=expand("<cword>")<CR><CR> 
nmap <C-@>c :cs find c <C-R>=expand("<cword>")<CR><CR> 
nmap <C-@>t :cs find t <C-R>=expand("<cword>")<CR><CR> 
nmap <C-@>e :cs find e <C-R>=expand("<cword>")<CR><CR> 
nmap <C-@>f :cs find f <C-R>=expand("<cword>")<CR><CR> 
nmap <C-@>i :cs find i ^<C-R>=expand("<cword>")<CR>$<CR> 
nmap <C-@>d :cs find d <C-R>=expand("<cword>")<CR><CR>






""""""""""""""""""""""""""""""
" => Ctags
""""""""""""""""""""""""""""""
" 输入":set tags+=/PATH/TO/tags"
set tags=tags;
set tags+=/usr/include/tags
"

"
nmap <c-]> g<c-]>


"""""""""""""""""""""""""""""
" =>Taglist
"""""""""""""""""""""""""""""

nnoremap <leader>tt :TlistToggle<cr>

let Tlist_Ctags_Cmd = '/usr/bin/ctags'

let Tlist_Show_One_File = 1            "不同时显示多个文件的tag，只显示当前文件的
let Tlist_Exit_OnlyWindow = 1          "如果taglist窗口是最后一个窗口，则退出vim
let Tlist_Use_Right_Window = 0         "在右侧窗口中显示taglist窗口A
let Tlist_Close_On_Select = 1 		   "选择了tag后自动关闭taglist窗口
let Tlist_Use_SingleClick = 1          "单击tag就跳转
let Tlist_GainFocus_On_ToggleOpen = 1  "TlistToggle打开taglist窗口时，如果希望输入焦点在taglist窗口中 
let Tlist_WinWidth = 60				   "Tlist_WinHeight和Tlist_WinWidth可以设置taglist窗口的高度和宽度






"""""""""""""""""""""""""""""
" =>Neocomplcache
"""""""""""""""""""""""""""""

"Note: This option must be set in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length =2

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? "\<C-y>" : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? "\<C-y>" : "\<Space>"

" AutoComplPop like behavior.
"let g:neocomplete#enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplete#enable_auto_select = 1
"let g:neocomplete#disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif
"let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
"let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'



""""""""""""""""""""""""""""""
" => YouCompleteMe  
""""""""""""""""""""""""""""""
" let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'  

" " 自动补全配置  
" " set completeopt=longest,menu    "让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)  
" " autocmd InsertLeave * if pumvisible() == 0|pclose|endif "离开插入模式后自动关闭预览窗口  
" " inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"    "回车即选中当前项  

" "上下左右键的行为 会显示其他信息  
" inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"  
" inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"  
" " inoremap <expr> <PageDown> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<PageDown>"  
" " inoremap <expr> <PageUp>   pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"  
  
" "youcompleteme  默认tab  s-tab 和自动补全冲突  
" let g:ycm_key_list_select_completion=['<c-j>']  
" let g:ycm_key_list_previous_completion=['<c-k>']  
" " let g:ycm_key_list_select_completion = ['<Down>']  
" " let g:ycm_key_list_previous_completion = ['<Up>']  

" let g:ycm_confirm_extra_conf=0 "关闭加载.ycm_extra_conf.py提示    
" let g:ycm_collect_identifiers_from_tags_files=1 " 开启 YCM 基于标签引擎  
" let g:ycm_min_num_of_chars_for_completion=2 " 从第2个键入字符就开始罗列匹配项  
" let g:ycm_cache_omnifunc=0  " 禁止缓存匹配项,每次都重新生成匹配项  
" let g:ycm_seed_identifiers_with_syntax=1    " 语法关键字补全  

" nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>    "force recomile with syntastic  
" "nnoremap <leader>lo :lopen<CR> "open locationlist  
" "nnoremap <leader>lc :lclose<CR>    "close locationlist  
" inoremap <leader><leader> <C-x><C-o>  


" "在注释输入中也能补全  
" let g:ycm_complete_in_comments = 1  
" "在字符串输入中也能补全  
" let g:ycm_complete_in_strings = 1  
" "注释和字符串中的文字也会被收入补全  
" let g:ycm_collect_identifiers_from_comments_and_strings = 0  
" let g:clang_user_options='|| exit 0'  
" nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR> " 跳转到定义处 
" "关闭语法分析：
" let g:ycm_show_diagnostics_ui = 0

""""""""""""""""""""""""""""""
" => bufExplorer plugin
""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""
" => MRU plugin
""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""
" => YankStack
""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""
" => CTRL-P
""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""
" => ZenCoding
""""""""""""""""""""""""""""""
" Enable all functions in all modes


""""""""""""""""""""""""""""""
" => snipMate (beside <TAB> support <CTRL-j>)
""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""
" => Vim grep
""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Nerd Tree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-multiple-cursors
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:multi_cursor_next_key='<C-s>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => surround.vim config
" Annotate strings with gettext http://amix.dk/blog/post/19678
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => lightline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vimroom
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vim-go
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Syntastic (syntax checker)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:syntastic_check_on_wq = 0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Git gutter (Git diff)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



