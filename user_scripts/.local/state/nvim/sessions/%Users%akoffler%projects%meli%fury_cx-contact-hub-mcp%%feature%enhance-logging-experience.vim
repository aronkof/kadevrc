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
badd +25 ~/projects/meli/fury_cx-contact-hub-mcp/internal/foundation/transient_storage.go
badd +63 /opt/homebrew/Cellar/go/1.24.4/libexec/src/sync/pool.go
badd +41 internal/business/chub/reopen_contact.go
badd +1 internal/adapters/logger/logger.go
badd +14 ~/projects/meli/fury_cx-contact-hub-mcp/internal/adapters/mcp/middleware/transient_storage.go
badd +89 /opt/homebrew/Cellar/go/1.24.4/libexec/src/io/io.go
badd +14 ~/projects/meli/fury_cx-contact-hub-mcp/internal/adapters/mcp/middleware/logger.go
badd +26 ~/projects/meli/fury_cx-contact-hub-mcp/internal/adapters/mcp/chub/reopen_contact.go
badd +12 ~/projects/meli/fury_cx-contact-hub-mcp/internal/adapters/http/client/c2c/reopen_c2c.go
argglobal
%argdel
edit ~/projects/meli/fury_cx-contact-hub-mcp/internal/foundation/transient_storage.go
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
balt internal/adapters/logger/logger.go
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
let s:l = 25 - ((22 * winheight(0) + 25) / 50)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 25
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
