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
badd +12 ~/projects/meli/fury_cx-contact-hub-mcp/internal/adapters/mcp/tools/change_process.go
badd +32 ~/projects/meli/fury_cx-contact-hub-mcp/internal/adapters/mcp/tools/get_channel_options.go
badd +18 ~/projects/meli/fury_cx-contact-hub-mcp/internal/adapters/mcp/tools/get_phone.go
badd +1 ~/projects/meli/fury_cx-contact-hub-mcp/internal/adapters/mcp/tools/reopen_contact.go
badd +6 ~/projects/meli/fury_cx-contact-hub-mcp/internal/adapters/mcp/tools/create_contact.go
badd +21 ~/projects/meli/fury_cx-contact-hub-mcp/internal/adapters/mcp/chub/get_channel_options.go
badd +19 ~/projects/meli/fury_cx-contact-hub-mcp/internal/adapters/mcp/chub/get_phone.go
argglobal
%argdel
edit ~/projects/meli/fury_cx-contact-hub-mcp/internal/adapters/mcp/tools/get_channel_options.go
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
let s:l = 32 - ((18 * winheight(0) + 18) / 37)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 32
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
