let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/projects/meli/fury_crm-workunit-workflow
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +28 ~/projects/meli/fury_crm-workunit-workflow/internal/adapters/director/director.go
badd +15 ~/projects/meli/fury_crm-workunit-workflow/internal/adapters/http/handlers/workflow/workflow.go
badd +20 ~/projects/meli/fury_crm-workunit-workflow/internal/adapters/http/handlers/workflow/start.go
badd +13 internal/adapters/config/config.go
badd +34 internal/adapters/http/middlewares/metrics.go
badd +1 internal/adapters/http/http.go
badd +11 internal/adapters/http/handlers/orchestrator/orchestrator.go
badd +16 /opt/homebrew/Cellar/go/1.24.4/libexec/src/net/http/status.go
badd +15 ~/projects/meli/fury_crm-workunit-workflow/internal/business/orchestrator/orchestrator.go
badd +21 ~/projects/meli/fury_crm-workunit-workflow/internal/business/business.go
badd +1 ~/projects/meli/fury_crm-workunit-workflow/internal/adapters/http/middlewares/validate_header.go
badd +26 ~/projects/meli/fury_crm-workunit-workflow/internal/business/orchestrator/start_workflow.go
badd +10 ~/projects/meli/fury_crm-workunit-workflow/internal/adapters/http/client/client.go
badd +5 ~/projects/meli/fury_crm-workunit-workflow/internal/adapters/config/configuration.yaml
badd +10 ~/projects/meli/fury_crm-workunit-workflow/internal/adapters/http/client/error_handler.go
badd +16 ~/projects/meli/fury_crm-workunit-workflow/internal/foundation/errors.go
badd +27 ~/go/pkg/mod/github.com/melisource/fury_go-toolkit-director@v0.5.1/pkg/director/execution.go
badd +16 ~/go/pkg/mod/github.com/melisource/fury_go-toolkit-director@v0.5.1/pkg/director/client.go
badd +25 ~/go/pkg/mod/github.com/melisource/fury_go-toolkit-director@v0.5.1/pkg/director/options.go
badd +55 ~/go/pkg/mod/github.com/melisource/fury_go-toolkit-director@v0.5.1/pkg/director/workflow.go
badd +37 ~/go/pkg/mod/github.com/melisource/fury_go-toolkit-director@v0.5.1/pkg/director/worker.go
argglobal
%argdel
edit ~/projects/meli/fury_crm-workunit-workflow/internal/foundation/errors.go
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
let s:l = 16 - ((15 * winheight(0) + 25) / 50)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 16
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
