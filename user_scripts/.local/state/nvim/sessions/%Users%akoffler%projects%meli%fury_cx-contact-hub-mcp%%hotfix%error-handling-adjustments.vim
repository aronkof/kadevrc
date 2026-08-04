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
badd +25 ~/projects/meli/fury_cx-contact-hub-mcp/internal/foundation/errors.go
badd +30 ~/projects/meli/fury_cx-contact-hub-mcp/internal/adapters/mcp/middleware/error_handler.go
badd +20 ~/projects/meli/fury_cx-contact-hub-mcp/internal/adapters/http/client/c2c/reopen_c2c_test.go
badd +31 ~/projects/meli/fury_cx-contact-hub-mcp/internal/adapters/http/client/chat/reopen_chat.go
badd +24 ~/projects/meli/fury_cx-contact-hub-mcp/internal/adapters/http/client/chat/chat.go
badd +43 ~/go/pkg/mod/github.com/melisource/fury_go-core@v1.13.0/pkg/rusty/rusty.go
badd +50 /opt/homebrew/Cellar/go/1.24.4/libexec/src/net/http/header.go
badd +13 ~/projects/meli/fury_cx-contact-hub-mcp/internal/adapters/http/client/c2c/c2c.go
badd +16 ~/projects/meli/fury_cx-contact-hub-mcp/internal/adapters/http/client/cases/cases.go
badd +12 ~/projects/meli/fury_cx-contact-hub-mcp/internal/adapters/http/client/chub/chub.go
badd +19 ~/projects/meli/fury_cx-contact-hub-mcp/internal/adapters/http/client/error_handler.go
badd +1 ~/projects/meli/fury_cx-contact-hub-mcp/internal/adapters/http/client/client.go
badd +1 ~/projects/meli/fury_cx-contact-hub-mcp/internal/adapters/http/client/chub/chub_test.go
badd +1 ~/projects/meli/fury_cx-contact-hub-mcp/internal/adapters/http/client/error_handler_test.go
badd +9 /opt/homebrew/Cellar/go/1.24.4/libexec/src/net/textproto/header.go
badd +20 ~/projects/meli/fury_cx-contact-hub-mcp/internal/adapters/http/client/c2c/reopen_c2c.go
badd +19 ~/projects/meli/fury_cx-contact-hub-mcp/internal/adapters/http/client/cases/reopen_case.go
badd +24 ~/projects/meli/fury_cx-contact-hub-mcp/internal/adapters/http/client/cases/change_process.go
badd +29 ~/projects/meli/fury_cx-contact-hub-mcp/internal/adapters/http/client/chub/create_contact_off.go
badd +29 ~/projects/meli/fury_cx-contact-hub-mcp/internal/adapters/http/client/chub/create_contact_on.go
badd +31 ~/projects/meli/fury_cx-contact-hub-mcp/internal/adapters/http/client/chub/get_phone.go
badd +31 ~/projects/meli/fury_cx-contact-hub-mcp/internal/adapters/http/client/chub/last_contact.go
badd +29 ~/projects/meli/fury_cx-contact-hub-mcp/internal/adapters/http/client/chub/get_channel_options.go
argglobal
%argdel
edit ~/projects/meli/fury_cx-contact-hub-mcp/internal/adapters/http/client/error_handler.go
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
let s:l = 19 - ((18 * winheight(0) + 23) / 47)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 19
normal! 021|
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
