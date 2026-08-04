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
badd +44 ~/projects/meli/fury_cx-contact-hub-mcp/internal/business/chub/reopen_contact.go
badd +6 ~/projects/meli/fury_cx-contact-hub-mcp/internal/business/chub/change_process.go
badd +29 ~/projects/meli/fury_cx-contact-hub-mcp/internal/business/chub/chub.go
badd +407 ~/projects/meli/fury_cx-contact-hub-mcp/internal/business/chub/reopen_contact_test.go
badd +15 ~/projects/meli/fury_cx-contact-hub-mcp/internal/adapters/http/client/cases/change_process.go
badd +221 ~/projects/meli/fury_cx-contact-hub-mcp/internal/adapters/mcp/chub/reopen_contact_test.go
badd +25 ~/projects/meli/fury_cx-contact-hub-mcp/internal/adapters/mcp/chub/reopen_contact.go
argglobal
%argdel
edit ~/projects/meli/fury_cx-contact-hub-mcp/internal/business/chub/reopen_contact.go
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
let s:l = 44 - ((20 * winheight(0) + 20) / 40)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 44
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
