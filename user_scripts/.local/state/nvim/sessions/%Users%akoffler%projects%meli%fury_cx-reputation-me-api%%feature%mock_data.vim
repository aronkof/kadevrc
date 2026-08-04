let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/projects/meli/fury_cx-reputation-me-api
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +55 ~/projects/meli/fury_cx-reputation-me-api/internal/integration/datahub/datahub.go
badd +45 ~/projects/meli/fury_cx-reputation-me-api/internal/usecases/sales_orders_use_case_test.go
badd +54 ~/projects/meli/fury_cx-reputation-me-api/cmd/restapi/handlers/sales_orders.go
badd +676 ~/projects/meli/fury_cx-reputation-me-api/internal/integration/datahub/datahub_test.go
badd +154 ~/projects/meli/fury_cx-reputation-me-api/internal/usecases/sales_orders_use_case.go
badd +13 ~/projects/meli/fury_cx-reputation-me-api/internal/integration/datahub/context.go
badd +133 ~/projects/meli/fury_cx-reputation-me-api/cmd/api/app.go
badd +1 ~/projects/meli/fury_cx-reputation-me-api/internal/integration/datahub/options.go
badd +5 ~/projects/meli/fury_cx-reputation-me-api/internal/usecases/dto/user_dto.go
badd +75 ~/projects/meli/fury_cx-reputation-me-api/internal/integration/datahub/options_test.go
badd +26 ~/projects/meli/fury_cx-reputation-me-api/internal/integration/datahub/mock/mock_datahub_service.go
badd +1 ~/projects/meli/fury_cx-reputation-me-api/cmd/main.go
badd +1 ~/projects/meli/fury_cx-reputation-me-api/README.md
badd +7 ~/projects/meli/fury_cx-reputation-me-api/go.mod
badd +59 ~/go/pkg/mod/github.com/melisource/fury_cx-datahub-go-toolkit@v1.7.0/pkg/client/client.go
argglobal
%argdel
edit ~/projects/meli/fury_cx-reputation-me-api/internal/integration/datahub/datahub.go
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
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
let s:l = 55 - ((33 * winheight(0) + 20) / 41)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 55
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
nohlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
