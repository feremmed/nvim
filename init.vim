
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
call plug#begin('~/AppData/Local/nvim/plugged')
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
" COC Autocompletes
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neoclide/coc-snippets'
" Others
Plug 'mg979/vim-visual-multi', {'branch': 'master'}  " Multicursor
Plug 'sheerun/vim-polyglot'                          " Paquete de idiomas con resaltado

" Plug 'Preservim/tagbar'
call plug#end()

"===========================================================
" VANILA NVIM

" L E T T E R   &   O T H E R S   L A Y E R

" Movement
" como chi o como no
noremap J 12j
noremap K 12k
noremap H 12h
noremap L 12l
inoremap JJ <Esc>18j
inoremap KK <Esc>18k
inoremap HH <Esc>34h
inoremap jj <Esc>j
inoremap kk <Esc>k
inoremap hh <Esc>h
inoremap lll <Esc>l
" La re mueven
noremap zs gg
noremap zz G
noremap zn zt
noremap zm zz
" No la mueven (tampoco la M)
noremap zh H
noremap zl L
" Mover entre líneas wrapeadas
noremap <Up> gk
noremap <Down> gj 
" Mover contenido de línea arriba a abajo
xnoremap <C-z> :move '>+1<CR>gv-gv
xnoremap <C-s> :move '<-2<CR>gv-gv
inoremap <C-z> <Esc>:m .+1<CR>==gi
inoremap <C-s> <Esc>:m .-2<CR>==gi
noremap <C-s> :m .-2<CR>
noremap <C-z> :m .+1<CR>
" Mover palabra dentro de la línea
inoremap <C-,> <esc>diwi<BS><esc>bhi <esc>phi
inoremap <C-.> <esc>diwi<BS><esc>ea <esc>phi
noremap <C-,> diwi<BS><esc>bhi <esc>ph
noremap <C-.> diwi<BS><esc>ea <esc>ph

" Tabaular
vnoremap < <gv
vnoremap > >gv
" Movimiento de cursor en i
inoremap qh <left>
inoremap qj <esc><down>a
inoremap qk <esc><up>a
inoremap ql <right>
" Movimiento de cursor de a seis líneas y columsas
inoremap fhh <esc>hhhhhhi
inoremap fj <esc>:+6<CR>a
inoremap fk <esc>:-6<CR>a
inoremap fll <esc>lllllla
noremap fhh hhhhhh
noremap fj :+6<CR>
noremap fk :-6<CR>
noremap fll llllll
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
" Search
noremap n nzzzv
noremap N Nzzzv
noremap <silent><space> :nohl<CR>

" Out
noremap qq <esc>
inoremap qq <esc>
xnoremap qq <esc>
tnoremap qq <C-\><C-n>
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
xnoremap s V
xnoremap v v^vg_
xnoremap c y
xnoremap n T
xnoremap m t
xnoremap a ggVG
xnoremap g gg
xnoremap z G

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
inoremap dl <delete> 
inoremap dw <esc>ciw
inoremap df <esc>ld$a
inoremap dc <esc>d0i

" Paste
noremap s <nop>
noremap sj p
noremap sk P
noremap sl yyp
noremap sh yyP
noremap sx xp
inoremap sx <esc>xpi

" Others
nnoremap U <C-r>
inoremap xx <Delete>
noremap <CR> i<CR><esc>
noremap <BS> a<BS><esc>
noremap <C-h> a<BS><esc>
noremap <TAB> :bnext<CR>
noremap <S-TAB> :bprev<CR>

" Numbers
inoremap xn 0
inoremap xm 1
inoremap x, 2
inoremap x. 3
inoremap xj 4
inoremap xk 5
inoremap xl 6
inoremap xu 7
inoremap xi 8
inoremap xo 9

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
"enumerate, int, iter

" JS
inoremap jc console.log()<left>
inoremap jf function () {}<left><CR><CR><up><up><esc>ela
inoremap jd () {}<left><CR><CR><up><up><esc>f(
inoremap js {}<left><CR><CR><up>
inoremap jx = [];<left><left>
inoremap jh ===
inoremap jw while () {}<left><CR><CR><up><up><esc>ela
inoremap jz <esc>$a;

" posibles letras de uso qf
" * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *

" S E M I C O L O N   L A Y E R

" whrite with semicolon layer
inoremap ;1 ¡
inoremap ;2 @
inoremap ;3 #
inoremap ;4 $
inoremap ;5 %
inoremap ;q !

noremap ;d dd
noremap ;s p
noremap ;a cc<esc>
noremap ;c yy
inoremap ;d <esc>dda
inoremap ;s <esc>pa
inoremap ;a <esc>cc
inoremap ;v <esc>v
inoremap ;c <esc>yya

inoremap ;r []<left>
inoremap ;e ]
inoremap ;w [
inoremap ;f ()<left>
inoremap ;x )
inoremap ;z (
inoremap ;u {}<left>
inoremap ;i {
inoremap ;o }
inoremap ;m <><left>
inoremap ;l ""<left>
inoremap ;g ''<left>

noremap ;r i[]<esc>
noremap ;e bi[<esc>ea]<esc>
noremap ;w 0i[<esc>$a]<esc>
noremap ;f i()<esc>
noremap ;x bi(<esc>ea)<esc>
noremap ;z 0i(<esc>$a)<esc>
noremap ;u i{}<esc>
noremap ;i bi{<esc>ea}<esc>
noremap ;o 0i{<esc>$a}<esc>
noremap ;m i<><esc>
noremap ;, bi<<esc>ea><esc>
noremap ;. 0i<<esc>$a><esc>
noremap ;l i""<esc>
noremap ;; bi"<esc>ea"<esc>
noremap ;' 0i"<esc>$a"<esc>
noremap ;g i''<esc>
noremap ;v bi'<esc>ea'<esc>
noremap ;b 0i'<esc>$a'<esc>
" command
noremap ;p :put=range()<left>
inoremap ;p <esc>:put=range()<left>

inoremap ;t Tan sólo estando así yo veo mi elemento, veo en el silencio amor, veo mi elemento amor
noremap ;t iTan sólo contigo así contigo yo veo mi elemento, veo en el silencio amor, veo mi elemento amor<esc>0
noremap ;y yy46p
noremap ;h yy16p
noremap ;n yy06p
inoremap ;y <esc>yy46pi
inoremap ;h <esc>yy16pi
inoremap ;n <esc>yy06pi

" Insert: b  (mapear ;'jk' entorpecen en JS)
" Normal: q;'

" ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~ ~

"CO M M A   L A Y E R  command
"q z x m in AutoHotKey

" Desde el archivo copia
noremap ,6 ggjdG<C-w><C-w>ggVGy<C-o>zt<C-w><C-w>p:w!<CR>
noremap ,, o<esc>
inoremap ,, <esc>o
noremap ,. O<esc>
inoremap ,. <esc>O
inoremap ,a <right>
inoremap ,d <esc>ciw
noremap ,d diw
inoremap ,w <Esc>lwha
inoremap ,e <Esc>ea
inoremap ,b <Esc>bi
inoremap ,u <Esc>ui
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
inoremap ,p %
inoremap ,y &
inoremap ,o °
inoremap ,` ~
inoremap ,/ ¿

" move between windows
noremap ,h <C-w>h
noremap ,l <C-w>l
noremap ,j <C-w>j
noremap ,k <C-w>k
noremap <leader><TAB> <C-w>w
noremap <leader>q <C-w>W

"<C-w>r/x transpola
"<C-w>o cierra tadas menos la posicionada
"<C-w>p salta entre verticales
"<C-w>s abre otro ventana igaual
"<C-w>q/c close actual
"<C-w>t top
"<C-w>b below
"<C-w>v crea vertical windo
"<C-w>n crea horizontal window

" Insert: i;'
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
noremap .s :source %<CR>
noremap .d :bdelete!<CR>
noremap .x :lclose<bar>b#<bar>bd #<CR>
noremap .q :q<CR>

" Normal: 2345 yuiopkl;'b/

" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

" in use AHK i o h j k l m , . (p)undefined
" Normal: w y u x q s z 
noremap <leader>e :! node %<CR>

" D I R E C T    A C C S E S S
noremap mm :e ~/AppData/Local/nvim/init.vim<CR>
noremap <leader>av :e ~/AppData/Local/nvim/init.vim<CR>
noremap <leader>ae :e E:/eproj<CR>
noremap <leader>ac :e ~/cproj<CR>
noremap <leader>am :e C:/Users/DELL<CR>
noremap <leader>ad :e ~/myDocs<CR>
noremap <leader>as :e ~/myDocs/Scripts.ahk<CR>
noremap <leader>af :e ~/myDocs/diagram.txt<CR>
noremap <leader>ag :e ~/myDocs/comaGral.md<CR>
noremap <leader>aa :e ~/myDocs/adminter.md<CR>
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

" ^-^  ^o^  ^.^  ^=^  ^*^  ^@^  ^L^  ^u^  ^b^  ^y^  ^l^  ^u^  ^b^  ^i^  ^ ^  ^w^

" P L U G    C O N F I G U R A T I O N

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
"
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

" < < < < < < < < < < < < < < < < < < < < < < < < < < < < < < < < < < <

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
nnoremap <C-j> :cnext<CR>
nnoremap <C-k> :cprevious<CR>
nnoremap <Leader>cp :Ack! --py 
nnoremap <Leader>ce :Ack! --py  E:/eproj/<left><left><left><left><left><left><left><left><left><left>
nnoremap <Leader>cc :Ack! --py  C:/Users/DELL/cproj/<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>
nnoremap <Leader>cd :Ack! --py  C:/Users/DELL/myDocs/<left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left>

" Airline --------------------------------
let g:airline_theme='kalisi'
let g:airline_powerline_fonts = 1
" List: Cobalt2, deus, distinguished, minimalist, violet, fruit punch, angr, badwolf, base16, beheilt, bubblegum, dark,
" durant, hybridline, hybrid, jellybeans, kalisi, kolor, leaderon, light, lucius, luna, molokai, monochrome, murmur, papercolor,
" powerlineish, raven, serene, silver, simple, solarized, sol, term, tomorrow, ubaryd, understated, wombat, zenburn

" Rainbow --------------------------------------
let g:rainbow_active = 1

" AutoSave --------------------------------
let g:auto_save = 1          " enable AutoSave on Vim startup

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


" COC Snippets --------------------------------
nmap <leader>v :CocCommand snippets.editSnippets<CR>
"
" Use <C-l> for trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)

" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-j> <Plug>(coc-snippets-select)

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-j>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'

" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)

" Use <leader>x for convert visual selected code to snippet
xmap <leader>2 <Plug>(coc-convert-snippet)

" inoremap <silent><expr> <TAB>
"       \ pumvisible() ? coc#_select_confirm() :
"       \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
"       \ <SID>check_back_space() ? "\<TAB>" :
"       \ coc#refresh()
" 
" function! s:check_back_space() abort
"   let col = col('.') - 1
"   return !col || getline('.')[col - 1]  =~# '\s'
" endfunction
" 
" let g:coc_snippet_next = '<tab>'

" if has('pythonx')
"   echo 'pyx* commands are available. (Python ' .. &pyx .. ')'
" endif

"snippets.ultisnips.enable": false

" Multicursor --------------------------------
" <,z> baja (AutoHotKey)
map <F3> <C-down>
" <,x> sube (AutoHotKey)
map <F4> <C-up>

" Polyglot --------------------------------

" Plug 'tpope/vim-dispatch'
" if has('nvim')
"   " Adds neovim support to vim-dispatch
"   Plug 'radenling/vim-dispatch-neovim'
" endif
" Plug 'aliev/vim-python'
" let g:python_compiler_fixqflist = 1
" Plug 'vim-python/python-syntax'
" let g:python_highlight_all = 1
" Plug 'Vimjas/vim-python-pep8-indent'
" let g:python_pep8_indent_hang_closing = 1




" ♡ ♢ ♤ ♧ ♣ ♦ ♥ ♠ √ ∛ ∜↕ ↖ ↗ ↘ ↙  ↰ ↱ ↲ ↳ ↴ ↶ ↷ ↸ ↹ ↺ ↻  ⇅ ⇆ ⇇ ⇈ ⇉ ⇊  ⇜ ⇝  ⏎  ▶
" ⤴ ⤵ ↓ ↔ ← → ↑ˍ ∎ ⊞ ⊟ ⊠ ⊡▐ ░ ▒ ▓ ▔ ■ □ ▢ ▣ ▤ ▥ ▩ ▪ ▫ ▬ ▭ ▮ ▯ ▰ ▱ ► ◄ ◈ ◘ ◙ ◚ ◛
" ◢ ◣ ◤ ◥ ◧ ◨ ◩ ◪ ◫ ❘ ❙ ◊ ∆  ▶ ▷  ► ▼ ◀ ◁ ◅ ` ˊ ᐟ ‐ ‑ ‒ ― ⁃ ≣ ⋐ ⋑ ⋒ ⋓ ⌜ ⌝ ⌞ ⌟ ┃
" ┅ ┆ ┇ ┊ ┋ ┏ ┐  ┗ ┘ ┛ ┣ ┤ ┳ ┴ ╋ ╌ ╎ ╏ ═ ║ ╭ ╮ ╯ ╰ ╱ ╲ ╳ ◜ ◝ ◞ ◟ ◠ ◡ ≡ ⌈ ⌊ — ⌉
" ⌋ ○ ◌ ¼ ½ ¾ ⅐ ⅑ ⅒ ⅓ ⅔ ⅕ ⅖ ⅗ ⅘ ⅙ ⅚ ⅛ ⅜ ⅝ ⅞ ⅟ ↉ ∟ ∭ ﹢ ﹣ ﹤ ﹥ ％ ＋ － ／ ＝
" ∩  ° ÷ ≡ ≥ ∞ ∫ ≤ ≠  ‰ ‱  π ± √ ∑ ∴ ×¹ ² ³ ° ⁰ ⁱ ⁴ ⁵ ⁶ ⁷ ⁸ ⁹ ⁺ ⁻ ⁼ ⁽ ⁾ ⁿ ₀ ₁ ₂
" ₃ ₄ ₅ ₆ ₇ ₈ ₉ ₊ ₋ ₌ ₍ ₎ ₐ ₑ ₒ ₓ ₔα β χ δ ε η γ ι κ λ μ ν ω ο φ π ψ ρ σ τ θ υ
" ξ ζ ˙ ‥ ‧ ‵ ‵ ❛ ❜   、 。 〃 「 」 『 』 〝 〞 ︰ ︰ ﹁ ﹂ ﹃ ﹄ ﹐ ﹒ ﹔ ﹔
" ﹕！ ＃ ＄ ％ ＆ ＊ ， ． ： ； ？ ＠ ～ • … ¿ “ ‘ · ′ ” ’ 〈 〉 《 》 「 」
" 『 』 【 】 〔 〕 ︵ ︶ ︷ ︸ ︹ ︺ ︻ ︼  ︽ ︾ ︿ ﹀ ﹁ ﹂ ﹃ ﹄ ﹙ ﹙ ﹚
"﹛ ﹜ ﹝ ﹞ ﹤ ﹥ （ ） ＜ ＞ ｛ ｛ ｝₮ ৲ ৳ ௹ ฿ ៛ ₠ ₡ ₢ ₣ ₤ ₥ ₦ ₧ ₨ ₩ ₪ ₫ ₭ ₯
"₰ ₱ ₲ ₳ ₴ ₵ ￥ ﷼ ¢ ¤ € ƒ £ ¥   ᴴᴰ § ¶ ♈ ♉ ♊ ♋ ♌ ♍ ♎ ♏ ♐ ♑ ♒ ♓



