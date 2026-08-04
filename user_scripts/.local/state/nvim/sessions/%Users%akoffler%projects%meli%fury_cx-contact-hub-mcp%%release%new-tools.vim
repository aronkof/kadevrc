let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/projects/meli/fury_cx-contact-hub-mcp
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +1 ~/projects/meli/fury_cx-contact-hub-mcp/internal/business/business.go
badd +13 ~/projects/meli/fury_cx-contact-hub-mcp/internal/adapters/http/client/chub/chub.go
badd +13 ~/projects/meli/fury_cx-contact-hub-mcp/internal/adapters/http/client/chub/get_channel_options.go
badd +12 ~/projects/meli/fury_cx-contact-hub-mcp/internal/adapters/config/config.go
badd +35 ~/projects/meli/fury_cx-contact-hub-mcp/cmd/api/main.go
badd +18 internal/foundation/errors.go
badd +16 internal/adapters/http/client/cases/change_process.go
badd +19 internal/adapters/mcp/middleware/error_handler.go
badd +67 internal/adapters/config/config_test.go
badd +11 ~/projects/meli/fury_cx-contact-hub-mcp/internal/adapters/http/http.go
badd +14 ~/projects/meli/fury_cx-contact-hub-mcp/internal/adapters/http/client/client.go
badd +18 ~/projects/meli/fury_cx-contact-hub-mcp/internal/adapters/http/client/error_handler.go
badd +12 ~/projects/meli/fury_cx-contact-hub-mcp/internal/adapters/http/client/cases/cases.go
badd +13 ~/projects/meli/fury_cx-contact-hub-mcp/internal/adapters/http/client/cases/reopen_case.go
badd +9 ~/projects/meli/fury_cx-contact-hub-mcp/internal/adapters/config/configuration.yaml
badd +27 ~/go/pkg/mod/github.com/melisource/fury_go-core@v1.13.0/pkg/rusty/url.go
badd +39 ~/go/pkg/mod/github.com/melisource/fury_go-core@v1.13.0/pkg/rusty/rusty.go
badd +6 ~/projects/meli/fury_cx-contact-hub-mcp/internal/business/chub/change_process.go
badd +15 ~/projects/meli/fury_cx-contact-hub-mcp/internal/business/chub/reopen_contact.go
badd +17 ~/projects/meli/fury_cx-contact-hub-mcp/internal/business/chub/chub.go
argglobal
%argdel
edit ~/projects/meli/fury_cx-contact-hub-mcp/internal/adapters/http/client/cases/reopen_case.go
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
balt ~/projects/meli/fury_cx-contact-hub-mcp/internal/adapters/http/client/cases/cases.go
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
let s:l = 13 - ((12 * winheight(0) + 16) / 32)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 13
normal! 052|
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
