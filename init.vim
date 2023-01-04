"NEO VIM

"sets 
syntax enable
set clipboard=unnamed          " Use clipboard of OS in Vim
set nu rnu ru                  " Enable hybrid mode by current line number and relative number / enable ruler for columns
set noeb vb t_vb=              " No error bells (beep off) / Chose 'visual bell' effect rather than 'beeping'
set history=1000               " Increase the number of commands saved by vim which by default only brings 20
set completeopt-=preview
set complete=.,w,b,u,t,        " ¿?
set completeopt=longest,menuone " Use the popup menu when there is only one match.
set omnifunc=syntaxcomplete#Complete
set cursorline cursorcolumn " línea horizontal/vertical
set smarttab
set expandtab                  " Transform Tabs in spaces
set tabstop=4                  " Tabstop
set shiftwidth=4               " Spaces for autoindenting
set softtabstop=4              " Remove a full TAB when press <BS>
set autoindent                 " Auto indentation when use Entrer key
set noshowmode                 " Hide modes insert, normal, etc.
set showmatch                  " higlight matching parentheses and brackets
set showcmd                    " Show the input of an *incomplete* command intuitively anticipating
set nowrap lbr                 " Line Wrapping and word Wrapping
set laststatus=2               " This makes Vim show a single status line
" set backspace=indent,eol,start " Backspace everywhere in insert mode
set mouse=a                    " Enable use of mouse in Vim
set splitright                 " Vertical splits will automatically be to the right
set hidden                     " Navigate freely between windows even though they contain modifications
set shortmess+=c               " This shortens about every message to a minimum
set hlsearch                   " Highlighted search results
set wildmenu                   " Make use of the 'status line' to show availables commands in that menu options
set incsearch                  " Incremental search
set ignorecase                 " Search is case insensitive but you can add \C to make it sensitive
set smartcase                  " Will automatically switch to a case-sensitive search if you use any capital letters
set scrolloff=5                " When scrolling, keep cursor 5 lines away from screen border
set nobackup                   " Disable backup files creation
set noswapfile                 " Disable swap files creation
set nowritebackup              " Disable write and replace files while editing
set undofile
set undodir=~/AppData/Local/nvim/undodir
" set backupdir=~/.vim/.backup//
" set directory=~/.vim/swap//
set foldmethod=manual          " To avoid performance issues, I never fold anything
let mapleader = " "            " Assign space key to <leader>
filetype indent plugin on      " Allow plugins by file type (required for plugins!)
let python_highlight_all = 1   " Activate Python language
set updatetime=300
set completeopt-=preview

"============================================================



" Plugins


call plug#begin('~/AppData/Local/nvim-data/site/autoload')
" Git
Plug 'tpope/vim-fugitive'                            " Git assistant
Plug 'junegunn/gv.vim'                               " A git commit browser in Vim
" Git Accessories
Plug 'mhinz/vim-signify'                             " Show changes in numberbar, only VCSs
Plug 'xuyuanp/nerdtree-git-plugin'                   " GIT status
" NERDTree
Plug 'preservim/nerdtree'                            " tree explorer
Plug 'ryanoasis/vim-devicons'                        " NERDTree icons, Airline, etc.
" Teriminals
Plug 'voldikss/vim-floaterm'                         " Teriminal flotante
Plug 'mctechnology17/vim-executor'
" File browser
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" Word browser
Plug 'mileszs/ack.vim'
Plug 'sharkdp/bat'                                   " Colorscheme to Ack and fzf
" Airline
Plug 'vim-airline/vim-airline'
Plug 'bling/vim-bufferline'
" Themes
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'
" Text area
Plug 'frazrepo/vim-rainbow'                          " corchetes de colores
Plug 'Yggdroot/indentLine'                           " Instert verticals lines of identation
" Automatics
Plug 'dyng/auto_mkdir'                               " Automatic make direction
Plug '907th/vim-auto-save'                           " Automatic save files
" COC Autocomplete
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Others
Plug 'mg979/vim-visual-multi', {'branch': 'master'}  " Multicursor
Plug 'sheerun/vim-polyglot'                          " Paquete de idiomas con resaltado

call plug#end()

"===========================================================




" VANILA NVIM
" -----------


" CONTROL

" Mover contenido de línea arriba a abajo
xnoremap <C-j> :move '>+1<CR>gv-gv
xnoremap <C-k> :move '<-2<CR>gv-gv
inoremap <C-j> <Esc>:m .+1<CR>==gi
inoremap <C-k> <Esc>:m .-2<CR>==gi
noremap <C-j> :m .+1<CR>
noremap <C-k> :m .-2<CR>
" Mover palabra dentro de la línea
inoremap <C-h> <esc>diwi<BS><esc>bhi <esc>phi
inoremap <C-l> <esc>diwi<BS><esc>ea <esc>phi
noremap <C-h> diwi<BS><esc>bhi <esc>ph
noremap <C-l> diwi<BS><esc>ea <esc>ph

" Movimiento de pantalla de a una línea
noremap <C-r> <C-y>
inoremap <C-r> <esc><C-y>a
inoremap <C-e> <esc><C-e>a
" Movimiento de media pantalla
noremap <C-f> <C-u>
inoremap <C-d> <esc><C-d>a
inoremap <C-f> <esc><C-u>a
" Movimiento de pantalla completa
noremap <C-c> <C-f>
noremap <C-v> <C-b>
inoremap <C-c> <esc><C-f>a
inoremap <C-v> <esc><C-b>a

" Tabaular
inoremap <C-,> <C-d>
inoremap <C-.> <C-t>
nnoremap <C-,> <<
nnoremap <C-.> >>
xnoremap <C-,> <gv
xnoremap <C-.> >gv

" Normal: 1234567890-=qwtyuiop[]\g;'bn/
" Insert: 1234567890-=qtyuop[]\ag;'xbn/

"------------------------------------------------------



" ALTERNATIVE

inoremap <A-n> 0
inoremap <A-m> 1
inoremap <A-,> 2
inoremap <A-.> 3
inoremap <A-j> 4
inoremap <A-k> 5
inoremap <A-l> 6
inoremap <A-u> 7
inoremap <A-i> 8
inoremap <A-o> 9

inoremap <A-z> <BS>
noremap <A-z> X
inoremap <A-x> <Delete>

inoremap <A-f> <esc>ui
noremap <A-f> u
inoremap <A-r> <esc><C-r>i
noremap <A-r> <C-r>
inoremap <A-q> <esc>Bi
inoremap <A-w> <esc>Wa
inoremap <A-e> <esc>Ea
noremap <A-q> B
noremap <A-w> W
noremap <A-e> E

noremap <A-d> dd
noremap <A-a> cc<esc>
noremap <A-c> yy
noremap <A-v> <C-q>
inoremap <A-d> <esc>dda
inoremap <A-a> <esc>cc
inoremap <A-c> <esc>yya
inoremap <A-v> <esc><C-q>


noremap <A-j> 25j
noremap <A-k> 25k
noremap <A-h> 25h
noremap <A-l> 25l

" Normal: 1234890-=yuip[]\g;'xbn,./
" Insert: 1234890-=yp[]\gh;'b/
" lejos: 567t

"------------------------------------------------------



" LETERS

" Movement
" como chi o como no
noremap J 10j
noremap K 10k
noremap H 10h
noremap L 10l
inoremap JJ <Esc>18j
inoremap KK <Esc>18k
inoremap HH <Esc>34h
inoremap jj <Esc>j
inoremap kk <Esc>k
inoremap hh <Esc>h

" La re mueven
noremap zz G
noremap zk zt
noremap zj zb
noremap zm zz
" No la mueven (tampoco la M)
noremap zh H
noremap zl L

" Search
noremap n nzzzv
noremap N Nzzzv
noremap <silent><space> :nohl<CR>

" move between windows
noremap q <nop>
noremap qh <C-w>h
noremap ql <C-w>l
noremap qj <C-w>j
noremap qk <C-w>k
noremap qf <C-w>w
noremap qq <C-w>W
noremap fq <C-w>W
inoremap qh <esc><C-w>h
inoremap ql <esc><C-w>l
inoremap qk <esc><C-w>k
inoremap qf <esc><C-w>w
inoremap qq <esc><C-w>W
inoremap fq <esc><C-w>W

" Out
noremap ff a
inoremap ff <esc>
xnoremap ff <esc>
tnoremap ff <C-\><C-n>
tnoremap <esc> <C-\><C-n>

" select
noremap vs V
noremap vl <esc>v
noremap vv ^vg_
noremap vw viw
noremap vf v$
noremap vc v0
noremap vn vT
noremap vm vt
noremap va ggVG
noremap vg vgg
noremap vz vG
inoremap vl <esc>lv
inoremap vv <esc>^vg_
inoremap vw <esc>viw
inoremap vj <esc>vj
inoremap vk <esc>vk
inoremap vf <esc>v$
inoremap vc <esc>v0
inoremap vn <esc>vT
inoremap vm <esc>vt
inoremap vg <esc>vgg
inoremap vz <esc>vG
inoremap vs <esc>V
xnoremap s V
xnoremap v v^vg_
xnoremap c y
xnoremap n T
xnoremap m t
xnoremap a ggVG
xnoremap g gg
xnoremap z G
xnoremap fc U
xnoremap fv u

" Copy
noremap cs yy
noremap cj yj
noremap ck ykj
noremap cl vy
noremap cf y$
noremap cc y0
noremap cw yiw
noremap ce ye
noremap cb yb
noremap cn yT
noremap cm yt
noremap cg ygg<C-o>
noremap cz yG
noremap ca ggVGy<C-o>
inoremap cj <esc>yja

" Cut
noremap dd <nop>
noremap dl xi <esc>
noremap dw diw
noremap df d$
noremap dc d0
noremap dn dT
noremap dm dt
noremap dzz dG
noremap daa ggVGx
noremap dx a<BS><Delete><esc>
inoremap dx <BS><Delete>
inoremap dw <esc>ciw
inoremap df <esc>ld$a
inoremap dc <esc>d0i

" Paste
noremap s p
noremap sd P
noremap sc yyp
noremap sv yyP
noremap sl yyp
noremap sh yyP
noremap sx xp
inoremap sx <esc>xpi

" Others
nnoremap U <C-r>
inoremap xx <Delete>
noremap <CR> i<CR><esc>
noremap <BS> a<BS><esc>
noremap <TAB> :bnext<CR>
noremap <S-TAB> :bprev<CR>
noremap <space><TAB> :bprev<CR>

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -





" L A N G U A G E S

" Python
inoremap mc print()<left>
inoremap mw while()<left>
inoremap mt type()<left>
inoremap mr range()<left>
inoremap mq append()<left>
inoremap mh list()<left>
inoremap mz <esc>$a:<cr>
inoremap mr True
inoremap mf False
"enumerate, int, it
" JS
inoremap jc console.log()<left>
inoremap jf function () {}<left><CR><CR><up><up><esc>ela
inoremap jd () {}<left><CR><CR><up><up><esc>f(
inoremap js {}<left><CR><CR><up>
inoremap jx = [];<left><left>
inoremap jw while () {}<left><CR><CR><up><up><esc>ela
inoremap jz <esc>$a;
inoremap jt ===
inoremap jr return

" writing
inoremap kr true
inoremap kf false
inoremap kt ==

" posibles letras de uso qfx

" * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *







" S E M I C O L O N   L A Y E R

" whrite with semicolon layer
inoremap ;1 ¡
inoremap ;2 @
inoremap ;3 #
inoremap ;4 $
inoremap ;5 %
inoremap ;q !
inoremap ;a &

inoremap ;r []<left>
inoremap ;e ]
inoremap ;w [
inoremap ;f ()<left>
inoremap ;d )
inoremap ;s (
inoremap ;c {}<left>
inoremap ;x {
inoremap ;z }
inoremap ;m <><left>
inoremap ;j ''<left>
inoremap ;u ""<left>

noremap ;r i[]<esc>
noremap ;e bi[<esc>ea]<esc>
noremap ;w 0i[<esc>$a]<esc>
noremap ;f i()<esc>
noremap ;d bi(<esc>ea)<esc>
noremap ;s 0i(<esc>$a)<esc>
noremap ;c i{}<esc>
noremap ;x bi{<esc>ea}<esc>
noremap ;z 0i{<esc>$a}<esc>
noremap ;m i<><esc>
noremap ;, bi<<esc>ea><esc>
noremap ;. 0i<<esc>$a><esc>
noremap ;u i""<esc>
noremap ;i bi"<esc>ea"<esc>
noremap ;o 0i"<esc>$a"<esc>
noremap ;j i''<esc>
noremap ;k bi'<esc>ea'<esc>
noremap ;l 0i'<esc>$a'<esc>
" command
noremap ;p :put=range()<left>
inoremap ;p <esc>:put=range()<left>

inoremap ;t Tan sólo estando así contigo yo veo mi elemento, veo en el silencio amor, veo mi elemento amor
noremap ;t iTan sólo estando así contigo yo veo mi elemento, veo en el silencio amor, veo mi elemento amor<esc>0
noremap ;y yy46p
noremap ;h yy16p
noremap ;n yy06p
inoremap ;y <esc>yy46pi
inoremap ;h <esc>yy16pi
inoremap ;n <esc>yy06pi

" Insert: gvb;'  (mapear ;jk  entorpecen en JS)
" Normal: gvb;'  (aq use in Ack Plug)

" ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~




"CO M M A   L A Y E R  command
"q z x m in AutoHotKey

" Desde el archivo copia
noremap ,ii ggjdG<C-w><C-w>ggVGy<C-o>zt<C-w><C-w>p:w!<CR>
noremap ,, o<esc>
inoremap ,, <esc>o
noremap ,. O<esc>
inoremap ,. <esc>O
inoremap ,d <esc>dawi
noremap ,d daw
inoremap ,f <Esc>$a
noremap ,f $
inoremap ,c <Esc>0j
noremap ,c 0
inoremap ,v <esc>_i
noremap ,v _
noremap ,s :w!<CR>


" whrite with comma layer
inoremap ,s +
inoremap ,r -
inoremap ,m *
inoremap ,t =
inoremap ,g _
inoremap ,n %
inoremap ,o °
inoremap ,` ~
inoremap ,/ ¿

" Movimiento de cursor en i
inoremap ,h <left>
inoremap ,j <esc><down>a
inoremap ,k <esc><up>a
inoremap ,l <right>
inoremap ,a <right>

" Insert: wepb;'
" Normal: ertpyuiahjklbnm WSGYVAHJKLNVBM 1457890-=

" ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~




" D O T    L A Y E R
"(Normal only)

noremap . <nop>
noremap .g :sav 
noremap .e :e 
noremap .z <C-w>=
noremap .t <C-w><C-x>
noremap .w :set nowrap!<CR>
noremap .r :set nu! rnu!<CR>
noremap .h :set ww=<,>,h,l<CR>
noremap .a :enew<CR>
noremap .f :vsp<CR>
noremap .v :exe "vertical resize " . (winwidth(0) * 5/4)<CR>
noremap .c :exe "vertical resize " . (winwidth(0) * 4/5)<CR>
noremap .j :sp<CR>
noremap .m :exe " resize " . (winheight(0) * 3/2)<CR>
noremap .n :exe " resize " . (winheight(0) * 2/3)<CR>
noremap .s :source ~/AppData/Local/nvim/init.vim<CR>
noremap .d :bdelete!<CR>
noremap .x :lclose<bar>b#<bar>bd #<CR>
noremap .q :q<CR>

" Normal: 2345 yuiopkl;'b/

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -





" in use AHK  h j k l m , . (p)undefined
" Normal: w y u x q s z 
noremap <leader>e :! node %<CR>

" D I R E C T    A C C S E S S
noremap mm :e ~/AppData/Local/nvim/init.vim<CR>
noremap <leader>av :e ~/AppData/Local/nvim/init.vim<CR>
noremap <leader>ae :e E:/eproj<CR>
noremap <leader>ac :e ~/cproj<CR>
noremap <leader>am :e C:/Users/DELL<CR>
noremap <leader>ad :e ~/myDocs<CR>
noremap <leader>aa :e ~/myDocs/adminter.md<CR>
noremap <leader>as :e ~/myDocs/Scripts.ahk<CR>
noremap <leader>ag :e ~/myDocs/comaGral.md<CR>
noremap <leader>af :e ~/Desktop<CR>
noremap <leader>aj :e ~/cproj/JS<CR>

" <leader> uiopvbm;'-=13456879 ||  + !%*QRTYUIOPSGZXCVBNM

" Cursor line and column
augroup cline
    au!
    au WinLeave,InsertEnter * set nocursorline
    au WinEnter,InsertLeave * set cursorline
augroup END

augroup ccolumm
    au!
    au WinLeave,InsertEnter * set nocursorcolumn
    au WinEnter,InsertLeave * set cursorcolumn
augroup END

" mark ending line
set list
set lcs=eol:¬

" Vim info, save file information
set vi=%,'50
set vi+=\"100,:100
set vi+=n~/vimfiles/info/.viminfo


" Disable relativenumber in insert mode
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

" empty spaces at  the of lineas on save of python files
autocmd BufWritePre *.py :%s/\s\+$//e
" ` ` ` ` ` ` ` ` ` ` ` ` ` ` ` ` ` ` ` ` ` ` ` ` ` ` ` ` ` ` ` ` ` ` ` ` ` `

" A B B R E V I A T I O N S
:ab thi This is a short filler text, who knows you? Get out I told you!


" font type and size
" set guifont=HackGenNerd\ Console:h10
set guifont=mononoki\ Nerd\ Font\ Mono:h10
" set guifont=MesloLGM\ Nerd\ Font\ Mono:h9
noremap <leader>gd :set guifont<CR>
noremap <leader>gg :set guifont=*<CR>

highlight Comment gui=italic

let s:fontsize = 16
function! AdjustFontSize(amount)
  let s:fontsize = s:fontsize+a:amount
  :execute "GuiFont! mononoki\ Nerd\ Font\ Mono:h" . s:fontsize
endfunction

noremap <C-ScrollWheelUp> :call AdjustFontSize(1)<CR>
noremap <C-ScrollWheelDown> :call AdjustFontSize(-1)<CR>
inoremap <C-ScrollWheelUp> <Esc>:call AdjustFontSize(1)<CR>a
inoremap <C-ScrollWheelDown> <Esc>:call AdjustFontSize(-1)<CR>a







" ===============================================================================================
" |||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
" ===============================================================================================


" P L U G    C O N F I G U R A T I O N


" Gruvbox--------------------------------
set termguicolors
let g:gruvbox_contrast_dark = 'hard'
colorscheme gruvbox

" NERDTree --------------------------------
nnoremap <leader>nn :NERDTreeToggle<CR>
nnoremap <leader>nf :NERDTreeFind<CR>
nnoremap <leader>nm :NERDTreeFocus<CR>

let g:NERDTreeHighlightCursorline = 1
let g:NERDTreeSyntaxDisableDefaultExtensions = 1
let g:NERDTreeSyntaxDisableDefaultExactMatches = 1
let g:NERDTreeSyntaxDisableDefaultPatternMatches = 0
let g:NERDTreeSyntaxEnabledExtensions = ['c', 'h', 'py', 'js', 'css', 'html'] " enabled extensions with default colors
let g:NERDTreeSyntaxEnabledExactMatches = ['node_modules', 'favicon.ico'] " enabled exact matches with default colors

" Airline --------------------------------
let g:airline_theme='kalisi'
let g:airline_powerline_fonts = 1

" Rainbow --------------------------------------
let g:rainbow_active = 1

" AutoSave --------------------------------
let g:auto_save = 1          " enable AutoSave on Vim startup

" Multicursor --------------------------------
" <,z> baja (AutoHotKey)
map <F3> <C-down>
" <,x> sube (AutoHotKey)
map <F4> <C-up>

" Fugiteve --------------------------------------
noremap <leader>gi :Git init<CR>
noremap <leader>go :Git clone<CR>
noremap <leader>gg :Git status<CR>
noremap <leader>gh :Gwrite<CR>
noremap <leader>gj :Git commit -m ''<left>
noremap <leader>gk :Git push<CR>
noremap <leader>gm :Git push origin master<CR>
noremap <leader>gl :Git log<CR>
" :Gread deshace cambios a último commit   :Gdiff visual de diferencias

":GV registros de git

" Floaterm --------------------------------------
let g:floaterm_autoclose = 0
let g:floaterm_winblend = 9
let g:floaterm_title = 'floaterm($1|$2)'

nnoremap <leader>tm :FloatermNew --width=55 --wintype=vsplit --name=f1 --position=rightbelow python<CR>
nnoremap <leader>tn :FloatermNew --height=18 --wintype=split --name=f2 --position=below python<CR>
nnoremap <leader>tk :FloatermNew --width=55 --wintype=vsplit --name=f3 --position=rightbelow<CR>
nnoremap <leader>tj :FloatermNew --height=18 --wintype=split --name=f4 --position=below<CR>
nnoremap <leader>tl :term<CR>

xnoremap <leader>f :FloatermSend<CR>
nnoremap <leader>tq :FloatermKill<CR>
nnoremap <leader>tt :FloatermToggle<CR>
nnoremap <leader>ts :FloatermShow<CR>
nnoremap <leader>th :FloatermHide<CR>

" Executor --------------------------------------
let g:executor_compiler_run_code = 1
" 1 = <S-ARROWS> 2 = <LEADER><ARROWS> 3 = <C-HJKL>
let g:executor_jump =
      \ get(g:, 'executor_jump', 3)
" default mapping for various useful functions
" THERE IS NO OPTION TO CONFIGURE.
" map: fm -> file maximization
" map: fw -> file write
" map: fl -> file list
" map: fo -> file open from current directory
" map: fr -> file rename(curre buffer) like tmux

" map: cd -> change directory
" map: fi -> file identifier
" map: fs -> find string in all files in current directory

let g:executor_file_mapping =
      \ get(g:, 'executor_file_mapping', 1)
" 0 = deactivate 1 = <ESC> 2 = <ESC><ESC>
let g:executor_esc = 2
nnoremap <leader>rm :ExecutorMenu<CR>
nnoremap <leader>r :ExecutorRun<CR>
nnoremap <leader>rd :ExecutorDebugger<CR>
nnoremap <leader>rs :ExecutorZoom<CR>

let g:executor_compiler_flags_python =
      \ get(g:, 'executor_compiler_flags_python', '')

let g:executor_debugger_flags_python =
      \ get(g:, 'executor_debugger_flags_python', '-m')

let g:executor_program_args_python =
      \ get(g:, 'executor_program_args_python', '')

" Fuzzy finder -----------------------------
nnoremap <leader>fe :Files E:/eproj/<CR>
nnoremap <leader>fc :Files ~/cproj/<CR>
nnoremap <leader>fd :Files ~/myDocs/<CR>
nnoremap <leader>ff :Files 
nnoremap <leader>fl :Lines<CR>
nnoremap <leader>fh :History<CR>
" according bat's page said
command! -bang -nargs=? -complete=dir Files
    \ call fzf#vim#files(<q-args>, {'options': ['--layout=reverse', '--info=inline', '--preview', 'bat --color=always --style=numbers --line-range=:500 {}']}, <bang>0)
 
let g:fzf_layout = { 'down': '30%' }
autocmd! FileType fzf
autocmd  FileType fzf set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler
 
" Ack --------------------------------------
cnoreabbrev Ack Ack!
let g:ackprg = "ag --vimgrep"
let g:ackhighlight = 1
nnoremap ;a :cnext<CR>
nnoremap ;q :cprevious<CR>
nnoremap <Leader>cp :Ack! --py 
nnoremap <Leader>ce :Ack! --py  E:/eproj/<left><left><left><left><left><left><left><left><left><left>
nnoremap <Leader>cc :Ack! --py  C:/Users/DELL/cproj/<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
nnoremap <Leader>cd :Ack! --py  C:/Users/DELL/myDocs/<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>

" COC --------------------------------------
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction



