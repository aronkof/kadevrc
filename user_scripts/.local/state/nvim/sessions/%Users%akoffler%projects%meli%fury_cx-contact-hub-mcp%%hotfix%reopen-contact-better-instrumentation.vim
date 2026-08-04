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
badd +66 ~/projects/meli/fury_cx-contact-hub-mcp/internal/adapters/mcp/chub/reopen_contact.go
badd +56 ~/go/pkg/mod/github.com/mark3labs/mcp-go@v0.43.0-beta.1/mcp/tools.go
badd +433 ~/go/pkg/mod/github.com/mark3labs/mcp-go@v0.43.0-beta.1/mcp/types.go
badd +31 internal/adapters/mcp/mcp_test.go
badd +343 ~/projects/meli/fury_cx-contact-hub-mcp/internal/adapters/mcp/chub/reopen_contact_test.go
badd +21 ~/go/pkg/mod/github.com/mark3labs/mcp-go@v0.43.0-beta.1/client/transport/interface.go
badd +337 ~/go/pkg/mod/github.com/mark3labs/mcp-go@v0.43.0-beta.1/client/transport/stdio.go
badd +131 ~/go/pkg/mod/github.com/mark3labs/mcp-go@v0.43.0-beta.1/client/transport/streamable_http.go
badd +17 ~/projects/meli/fury_cx-contact-hub-mcp/internal/adapters/mcp/chub/chub_test.go
badd +40 ~/projects/meli/fury_cx-contact-hub-mcp/internal/adapters/mcp/chub/change_process_test.go
badd +27 ~/projects/meli/fury_cx-contact-hub-mcp/internal/adapters/mcp/chub/create_contact_off_test.go
badd +40 ~/projects/meli/fury_cx-contact-hub-mcp/internal/adapters/mcp/chub/create_contact_on_test.go
badd +40 ~/projects/meli/fury_cx-contact-hub-mcp/internal/adapters/mcp/chub/get_channel_options_test.go
badd +40 ~/projects/meli/fury_cx-contact-hub-mcp/internal/adapters/mcp/chub/get_phone_test.go
badd +40 ~/projects/meli/fury_cx-contact-hub-mcp/internal/adapters/mcp/chub/last_contact_test.go
badd +194 ~/projects/meli/fury_cx-contact-hub-mcp/internal/vendor/mcptest.go
badd +195 /opt/homebrew/Cellar/go/1.24.4/libexec/src/io/pipe.go
badd +451 ~/go/pkg/mod/github.com/mark3labs/mcp-go@v0.43.0-beta.1/server/stdio.go
badd +251 ~/go/pkg/mod/github.com/mark3labs/mcp-go@v0.43.0-beta.1/server/hooks.go
badd +254 ~/go/pkg/mod/github.com/mark3labs/mcp-go@v0.43.0-beta.1/server/request_handler.go
badd +41 ~/go/pkg/mod/github.com/mark3labs/mcp-go@v0.43.0-beta.1/server/server.go
badd +233 ~/go/pkg/mod/github.com/mark3labs/mcp-go@v0.43.0-beta.1/server/streamable_http.go
badd +17 ~/go/pkg/mod/github.com/mark3labs/mcp-go@v0.43.0-beta.1/client/client.go
badd +21 ~/projects/meli/fury_cx-contact-hub-mcp/internal/adapters/mcp/mcp.go
badd +7 ~/go/pkg/mod/github.com/mark3labs/mcp-go@v0.43.0-beta.1/server/ctx.go
badd +27 ~/projects/meli/fury_cx-contact-hub-mcp/cmd/list-tools/main.go
badd +38 ~/projects/meli/fury_cx-contact-hub-mcp/cmd/api/main.go
badd +19 ~/projects/meli/fury_cx-contact-hub-mcp/internal/adapters/mcp/http.go
badd +12 ~/go/pkg/mod/github.com/mark3labs/mcp-go@v0.43.0-beta.1/client/http.go
badd +3338 /opt/homebrew/Cellar/go/1.24.4/libexec/src/net/http/server.go
badd +889 /opt/homebrew/Cellar/go/1.24.4/libexec/src/net/http/request.go
badd +1 ~/projects/meli/fury_cx-contact-hub-mcp/internal/business/chub/get_channel_options.go
badd +134 ~/projects/meli/fury_cx-contact-hub-mcp/internal/business/chub/get_channel_options_test.go
badd +830 /opt/homebrew/Cellar/go/1.24.4/libexec/src/net/url/url.go
badd +28 ~/projects/meli/fury_cx-contact-hub-mcp/internal/adapters/mcp/tools/reopen_contact.go
badd +7 ~/projects/meli/fury_cx-contact-hub-mcp/internal/foundation/errors.go
argglobal
%argdel
edit ~/go/pkg/mod/github.com/mark3labs/mcp-go@v0.43.0-beta.1/client/transport/interface.go
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
balt ~/projects/meli/fury_cx-contact-hub-mcp/internal/adapters/mcp/chub/reopen_contact_test.go
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
let s:l = 21 - ((17 * winheight(0) + 18) / 37)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 21
normal! 03|
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
