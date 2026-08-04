let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/projects/meli/fury_cx-case-collector
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +27 ~/projects/meli/fury_cx-case-collector/internal/infra/entrypoints/rest/routes.go
badd +89 ~/projects/meli/fury_cx-case-collector/internal/infra/entrypoints/rest/es_handler.go
badd +30 ~/projects/meli/fury_cx-case-collector/internal/event_sourcing/entities/handler/handler.go
badd +11 ~/projects/meli/fury_cx-case-collector/internal/event_sourcing/entities/handler/dto.go
badd +71 ~/projects/meli/fury_cx-case-collector/internal/dependencies.go
badd +12 ~/projects/meli/fury_cx-case-collector/internal/event_sourcing/idempotency.go
badd +13 ~/go/pkg/mod/github.com/melisource/fury_go-toolkit-event-sourcing@v0.5.1/pkg/es/event/event.go
badd +1 ~/go/pkg/mod/github.com/melisource/fury_go-toolkit-event-sourcing@v0.5.1/pkg/es/event/dispatcher.go
badd +16 ~/go/pkg/mod/github.com/melisource/fury_go-toolkit-event-sourcing@v0.5.1/pkg/es/type.go
badd +16 ~/go/pkg/mod/github.com/melisource/fury_go-toolkit-event-sourcing@v0.5.1/pkg/es/internal/protocol/event.go
badd +81 ~/projects/meli/fury_cx-case-collector/internal/infra/config/config.go
badd +17 ~/projects/meli/fury_cx-case-collector/internal/event_sourcing/commons/commons.go
argglobal
%argdel
edit ~/projects/meli/fury_cx-case-collector/internal/event_sourcing/idempotency.go
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
balt ~/projects/meli/fury_cx-case-collector/internal/event_sourcing/entities/handler/handler.go
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
let s:l = 12 - ((11 * winheight(0) + 25) / 50)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 12
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
