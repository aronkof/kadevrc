let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/projects/meli/fury_cross-ot-core
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +77 ~/projects/meli/fury_cross-ot-core/internal/domain/errors.go
badd +33 ~/projects/meli/fury_cross-ot-core/internal/domain/task.go
badd +229 ~/projects/meli/fury_cross-ot-core/internal/application/task_creation_service.go
badd +205 ~/projects/meli/fury_cross-ot-core/internal/application/task_reopen_service.go
badd +272 ~/projects/meli/fury_cross-ot-core/internal/infra/entrypoint/rest/task_dto_v2.go
badd +71 ~/projects/meli/fury_cross-ot-core/internal/infra/entrypoint/rest/task_controller_v2.go
argglobal
%argdel
edit ~/projects/meli/fury_cross-ot-core/internal/application/task_creation_service.go
argglobal
balt ~/projects/meli/fury_cross-ot-core/internal/application/task_reopen_service.go
setlocal foldmethod=expr
setlocal foldexpr=v:lua.vim.lsp.foldexpr()
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=99
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal nofoldenable
let s:l = 197 - ((37 * winheight(0) + 32) / 64)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 197
normal! 0
tabnext 1
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0 && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20
let &shortmess = s:shortmess_save
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
nohlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
