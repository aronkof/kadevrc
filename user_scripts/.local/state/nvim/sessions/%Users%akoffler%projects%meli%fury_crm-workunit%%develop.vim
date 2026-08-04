let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/projects/meli/fury_crm-workunit
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +48 ~/projects/meli/fury_crm-workunit/internal/infrastructure/adapter/input/rest/router.go
badd +36 ~/projects/meli/fury_crm-workunit/internal/infrastructure/adapter/input/rest/crud_update_handler.go
badd +12 ~/projects/meli/fury_crm-workunit/internal/domain/port/input/crud.go
badd +182 ~/projects/meli/fury_crm-workunit/internal/application/crud.go
badd +59 ~/projects/meli/fury_crm-workunit/internal/domain/entity/workunit.go
badd +11 ~/projects/meli/fury_crm-workunit/internal/domain/port/output/validator.go
badd +45 ~/projects/meli/fury_crm-workunit/internal/domain/port/output/validator_mock.go
badd +35 ~/projects/meli/fury_crm-workunit/internal/infrastructure/adapter/output/definition/adapter.go
badd +209 ~/go/pkg/mod/github.com/melisource/fury_crm-workunit-go-toolkit@v0.0.2/pkg/definition/client.go
badd +193 ~/go/pkg/mod/github.com/melisource/fury_crm-workunit-go-toolkit@v0.0.2/pkg/definition/definition.go
argglobal
%argdel
edit ~/go/pkg/mod/github.com/melisource/fury_crm-workunit-go-toolkit@v0.0.2/pkg/definition/client.go
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
balt ~/projects/meli/fury_crm-workunit/internal/infrastructure/adapter/output/definition/adapter.go
setlocal foldmethod=expr
setlocal foldexpr=v:lua.vim.lsp.foldexpr()
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=99
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal nofoldenable
let s:l = 209 - ((26 * winheight(0) + 26) / 52)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 209
normal! 048|
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
nohlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
