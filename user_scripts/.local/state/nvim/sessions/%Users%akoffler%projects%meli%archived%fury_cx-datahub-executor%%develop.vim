let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/projects/meli/archived/fury_cx-datahub-executor
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +38 ~/projects/meli/archived/fury_cx-datahub-executor/internal/application/error.go
badd +58 ~/projects/meli/archived/fury_cx-datahub-executor/internal/infrastructure/repository/objectstorage/consumer.go
badd +75 ~/projects/meli/archived/fury_cx-datahub-executor/internal/application/service/consumer.go
badd +49 ~/projects/meli/archived/fury_cx-datahub-executor/internal/infrastructure/entrypoint/rest/controller/execute.go
badd +65 ~/go/pkg/mod/github.com/melisource/fury_cx-go-web@v0.4.0/pkg/web/context/request.go
badd +1 ~/go/pkg/mod/github.com/melisource/fury_cx-go-web@v0.4.0/pkg/web/context/constant.go
badd +11 ~/projects/meli/archived/fury_cx-datahub-executor/internal/domain/repository/consumer.go
badd +79 ~/projects/meli/archived/fury_cx-datahub-executor/internal/domain/repository/mock/consumer.go
badd +28 ~/go/pkg/mod/github.com/melisource/fury_cx-datahub-core/v2@v2.27.1/pkg/web/constants/constant.go
badd +10 ~/go/pkg/mod/github.com/melisource/fury_cx-go-web@v0.4.0/pkg/web/middleware/request_body.go
badd +14 ~/go/pkg/mod/github.com/melisource/fury_cx-go-web@v0.4.0/pkg/web/middleware/admin.go
badd +9 ~/go/pkg/mod/github.com/melisource/fury_cx-go-web@v0.4.0/pkg/web/middleware/middleware.go
badd +17 ~/go/pkg/mod/github.com/melisource/fury_cx-datahub-core/v2@v2.27.1/pkg/web/middleware/consumer.go
badd +20 ~/projects/meli/archived/fury_cx-datahub-executor/cmd/api/main.go
badd +85 ~/projects/meli/archived/fury_cx-datahub-executor/internal/infrastructure/runner.go
badd +21 ~/projects/meli/archived/fury_cx-datahub-executor/internal/infrastructure/config/config.go
badd +21 ~/projects/meli/archived/fury_cx-datahub-executor/internal/infrastructure/entrypoint/rest/error_handler.go
badd +97 ~/go/pkg/mod/github.com/melisource/fury_cx-datahub-core/v2@v2.27.1/pkg/execution/error.go
badd +42 ~/projects/meli/archived/fury_cx-datahub-executor/internal/infrastructure/metrics/metric.go
badd +30 ~/projects/meli/archived/fury_cx-datahub-executor/internal/infrastructure/metrics/context.go
argglobal
%argdel
edit ~/projects/meli/archived/fury_cx-datahub-executor/internal/infrastructure/metrics/metric.go
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
balt ~/projects/meli/archived/fury_cx-datahub-executor/internal/infrastructure/metrics/context.go
setlocal foldmethod=expr
setlocal foldexpr=v:lua.vim.lsp.foldexpr()
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=99
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal nofoldenable
let s:l = 42 - ((12 * winheight(0) + 18) / 36)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 42
normal! 031|
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
