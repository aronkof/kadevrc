let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/projects/meli/fury_cross-crm-plat-workunit
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +1 ~/projects/meli/fury_cross-crm-plat-workunit/internal/foundation/work_unit_errors.go
badd +18 ~/projects/meli/fury_cross-crm-plat-workunit/internal/foundation/draft_errors.go
badd +26 ~/projects/meli/fury_cross-crm-plat-workunit/internal/foundation/custom_error.go
badd +4 /private/tmp/PLATWORKEX-344.md
badd +43 ~/projects/meli/fury_cross-crm-plat-workunit/internal/adapters/inbound/http/handlers/drafts/patch_draft.go
badd +48 ~/projects/meli/fury_cross-crm-plat-workunit/internal/domain/errors.go
badd +103 ~/projects/meli/fury_cross-crm-plat-workunit/internal/domain/work_unit.go
badd +13 ~/projects/meli/fury_cross-crm-plat-workunit/internal/domain/work_unit_errors.go
badd +1 ~/projects/meli/fury_cross-crm-plat-workunit/internal/domain/definition.go
badd +145 ~/projects/meli/fury_cross-crm-plat-workunit/internal/domain/draft.go
argglobal
%argdel
edit ~/projects/meli/fury_cross-crm-plat-workunit/internal/foundation/work_unit_errors.go
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
setlocal foldmethod=expr
setlocal foldexpr=v:lua.vim.lsp.foldexpr()
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=99
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal nofoldenable
let s:l = 1 - ((0 * winheight(0) + 33) / 67)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
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
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
