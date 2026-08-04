let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/go/pkg/mod/github.com/mark3labs/mcp-go@v0.43.0-beta.1
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +151 ~/go/pkg/mod/github.com/mark3labs/mcp-go@v0.43.0-beta.1/mcptest/mcptest.go
badd +324 ~/go/pkg/mod/github.com/mark3labs/mcp-go@v0.43.0-beta.1/server/stdio.go
badd +552 ~/go/pkg/mod/github.com/mark3labs/mcp-go@v0.43.0-beta.1/server/streamable_http_test.go
badd +75 ~/go/pkg/mod/github.com/mark3labs/mcp-go@v0.43.0-beta.1/client/transport/stdio.go
badd +26 ~/go/pkg/mod/github.com/mark3labs/mcp-go@v0.43.0-beta.1/client/transport/streamable_http.go
badd +362 ~/go/pkg/mod/github.com/mark3labs/mcp-go@v0.43.0-beta.1/server/streamable_http.go
badd +437 ~/go/pkg/mod/github.com/mark3labs/mcp-go@v0.43.0-beta.1/client/client.go
badd +3 ~/go/pkg/mod/github.com/mark3labs/mcp-go@v0.43.0-beta.1/client/http.go
badd +718 /opt/homebrew/Cellar/go/1.24.4/libexec/src/context/context.go
badd +7 ~/go/pkg/mod/github.com/mark3labs/mcp-go@v0.43.0-beta.1/server/ctx.go
argglobal
%argdel
edit ~/go/pkg/mod/github.com/mark3labs/mcp-go@v0.43.0-beta.1/server/stdio.go
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
balt ~/go/pkg/mod/github.com/mark3labs/mcp-go@v0.43.0-beta.1/server/ctx.go
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
let s:l = 324 - ((20 * winheight(0) + 18) / 37)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 324
normal! 041|
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
