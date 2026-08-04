let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/projects/meli/archived/fury_aa-contacts-resolver
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +25 ~/projects/meli/archived/fury_aa-contacts-resolver/cmd/internal/cases/case_off.go
badd +25 ~/projects/meli/archived/fury_aa-contacts-resolver/cmd/internal/cases/service.go
badd +52 ~/projects/meli/archived/fury_aa-contacts-resolver/cmd/api/app/app.go
badd +253 ~/projects/meli/archived/fury_aa-contacts-resolver/cmd/api/config/config.go
badd +1 ~/projects/meli/archived/fury_aa-contacts-resolver/cmd/api/config/properties.go
badd +1 ~/projects/meli/archived/fury_aa-contacts-resolver/docs/specs/swagger.yaml
badd +55 ~/projects/meli/archived/fury_aa-contacts-resolver/cmd/api/config/configuration.properties
argglobal
%argdel
edit ~/projects/meli/archived/fury_aa-contacts-resolver/cmd/api/config/configuration.properties
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
balt ~/projects/meli/archived/fury_aa-contacts-resolver/cmd/api/app/app.go
setlocal foldmethod=expr
setlocal foldexpr=0
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=99
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal nofoldenable
let s:l = 55 - ((11 * winheight(0) + 8) / 16)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 55
normal! 026|
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
