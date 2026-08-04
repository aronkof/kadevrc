let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/projects/meli/fury_cx-assignment-api
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +191 ~/projects/meli/fury_cx-assignment-api/internal/assign/application/projection.go
badd +29 ~/projects/meli/fury_cx-assignment-api/internal/assign/application/assignment_interface.go
badd +31 internal/assign/infra/outgoing/lock/lock_client.go
badd +18 ~/go/pkg/mod/github.com/melisource/fury_go-toolkit-lock@v1.2.0/pkg/locker/locker.go
badd +24 ~/go/pkg/mod/github.com/melisource/fury_go-toolkit-lock@v1.2.0/pkg/locker/telemetry.go
badd +1 ~/go/pkg/mod/github.com/melisource/fury_go-toolkit-lock@v1.2.0/pkg/locker/client.go
argglobal
%argdel
edit ~/go/pkg/mod/github.com/melisource/fury_go-toolkit-lock@v1.2.0/pkg/locker/client.go
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
balt ~/go/pkg/mod/github.com/melisource/fury_go-toolkit-lock@v1.2.0/pkg/locker/locker.go
setlocal foldmethod=manual
setlocal foldexpr=v:lua.require'lazyvim.util'.ui.foldexpr()
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=99
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal nofoldenable
silent! normal! zE
let &fdl = &fdl
let s:l = 1 - ((0 * winheight(0) + 21) / 42)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
tabnext 1
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0 && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20
let &shortmess = s:shortmess_save
let &winminheight = s:save_winminheight
let &winminwidth = s:save_winminwidth
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
