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
badd +38 ~/projects/meli/fury_cx-contact-hub-mcp/internal/adapters/http/client/chub/get_channel_options_test.go
badd +15 ~/projects/meli/fury_cx-contact-hub-mcp/internal/adapters/http/client/chub/chub.go
badd +13 ~/projects/meli/fury_cx-contact-hub-mcp/internal/adapters/http/client/chub/get_channel_options.go
badd +73 ~/go/pkg/mod/github.com/melisource/fury_go-core@v1.13.0/pkg/rusty/rusty.go
badd +90 internal/adapters/http/client/cases/cases_test.go
badd +6 ~/projects/meli/fury_cx-contact-hub-mcp/internal/business/chub/get_channel_options.go
badd +1 ~/projects/meli/fury_cx-contact-hub-mcp/internal/adapters/mcp/tools/get_channel_options.go
badd +1 ~/projects/meli/fury_cx-contact-hub-mcp/internal/adapters/mcp/tools/get_last_contact.go
badd +1 ~/projects/meli/fury_cx-contact-hub-mcp/internal/adapters/mcp/tools/reopen_contact.go
badd +1 ~/projects/meli/fury_cx-contact-hub-mcp/internal/adapters/mcp/mcp_test.go
badd +151 ~/projects/meli/fury_cx-contact-hub-mcp/internal/business/chub/get_channel_options_test.go
argglobal
%argdel
edit ~/projects/meli/fury_cx-contact-hub-mcp/internal/business/chub/get_channel_options_test.go
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
let s:l = 151 - ((36 * winheight(0) + 18) / 37)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 151
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
