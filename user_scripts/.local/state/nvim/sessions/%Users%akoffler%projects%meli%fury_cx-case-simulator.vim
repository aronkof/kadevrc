let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/projects/meli/fury_cx-case-simulator
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +37 ~/projects/meli/fury_cx-case-simulator/cmd/api/main.go
badd +50 ~/projects/meli/fury_cx-case-simulator/internal/infra/config/config.go
badd +11 ~/projects/meli/fury_cx-case-simulator/internal/infra/outgoing/datahub/client.go
badd +9 ~/projects/meli/fury_cx-case-simulator/internal/infra/outgoing/datahub/delete_mock.go
badd +105 ~/projects/meli/fury_cx-case-simulator/internal/infra/outgoing/datahub/create_mock.go
badd +21 ~/go/pkg/mod/github.com/melisource/fury_cx-mocks-api-go-toolkit@v0.0.3/pkg/mock/mock.go
badd +267 ~/go/pkg/mod/github.com/melisource/fury_cx-mocks-api-go-toolkit@v0.0.3/pkg/mock/client.go
badd +100 ~/projects/meli/fury_cx-case-simulator/internal/application/create_mocks_use_case.go
badd +134 ~/projects/meli/fury_cx-case-simulator/internal/application/simulate_case_use_case.go
argglobal
%argdel
edit ~/go/pkg/mod/github.com/melisource/fury_cx-mocks-api-go-toolkit@v0.0.3/pkg/mock/client.go
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
balt ~/projects/meli/fury_cx-case-simulator/internal/infra/outgoing/datahub/client.go
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
let s:l = 267 - ((28 * winheight(0) + 17) / 34)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 267
normal! 021|
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
