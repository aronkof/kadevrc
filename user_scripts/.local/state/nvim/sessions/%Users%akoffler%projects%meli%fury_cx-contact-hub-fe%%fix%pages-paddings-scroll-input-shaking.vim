let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/projects/meli/fury_cx-contact-hub-fe
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +10 ~/projects/meli/fury_cx-contact-hub-fe/app/pages/hub/view.tsx
badd +183 app/utils/handle-mobile.tsx
badd +12 app/pages/hub/hub.scss
badd +1 app/pages/hub/index.ts
badd +277 ~/projects/meli/fury_cx-contact-hub-fe/node_modules/frontend-remote-modules/index.d.ts
badd +14 ~/projects/meli/fury_cx-contact-hub-fe/app/modules/Hub/hub.tsx
badd +12 ~/projects/meli/fury_cx-contact-hub-fe/app/modules/Hub/view.tsx
badd +139 ~/projects/meli/fury_cx-contact-hub-fe/app/pages/hub/controller.tsx
badd +59 ~/projects/meli/fury_cx-contact-hub-fe/app/types/view.ts
badd +7 ~/projects/meli/fury_cx-contact-hub-fe/app/modules/Hub/index.js
badd +77 ~/projects/meli/fury_cx-contact-hub-fe/app/modules/Hub/ContactHubManager/index.tsx
badd +30 ~/projects/meli/fury_cx-contact-hub-fe/node_modules/react-router/dist/lib/hooks.d.ts
badd +165 ~/projects/meli/fury_cx-contact-hub-fe/app/modules/Hub/styles.scss
badd +173 ~/projects/meli/fury_cx-contact-hub-fe/node_modules/frontend-page/index.d.ts
argglobal
%argdel
edit ~/projects/meli/fury_cx-contact-hub-fe/app/pages/hub/view.tsx
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
balt app/pages/hub/index.ts
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
let s:l = 10 - ((9 * winheight(0) + 23) / 47)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 10
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
