let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/projects/meli/fury_melichat-sdk
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +64 ~/projects/meli/fury_melichat-sdk/src/infrastructure/services/WebsocketService.ts
badd +118 src/infrastructure/adapters/outbound/clients/websocket/Websocket.ts
badd +100 ~/projects/meli/fury_melichat-sdk/src/infrastructure/adapters/outbound/clients/websocket/WebsocketBuilder.ts
badd +17 ~/projects/meli/fury_melichat-sdk/src/infrastructure/services/MessageService.ts
badd +4 ~/projects/meli/fury_melichat-sdk/src/core/common/validation/Validate.ts
badd +36 ~/projects/meli/fury_melichat-sdk/src/core/domain/Message.ts
badd +4 ~/projects/meli/fury_melichat-sdk/src/core/ports/MessageClientPort.ts
badd +74 ~/projects/meli/fury_melichat-sdk/src/infrastructure/adapters/outbound/clients/MessageClient.ts
badd +14 ~/projects/meli/fury_melichat-sdk/src/infrastructure/adapters/inbound/controllers/MessageController.ts
badd +70 ~/projects/meli/fury_melichat-sdk/src/application/MelichatGlobal.ts
badd +196 ~/projects/meli/fury_melichat-sdk/src/infrastructure/configuration/App.ts
badd +11 ~/projects/meli/fury_melichat-sdk/src/infrastructure/adapters/inbound/controllers/WebsocketController.ts
badd +10 ~/projects/meli/fury_melichat-sdk/src/infrastructure/services/WebsocketService.test.ts
badd +2 ~/projects/meli/fury_melichat-sdk/src/infrastructure/adapters/outbound/clients/websocket/WebsocketProvider.ts
badd +24 ~/projects/meli/fury_melichat-sdk/src/infrastructure/adapters/outbound/clients/websocket/Websocket.test.ts
badd +13 ~/projects/meli/fury_melichat-sdk/src/infrastructure/services/ProviderService.ts
badd +4 ~/projects/meli/fury_melichat-sdk/src/infrastructure/services/LogService.ts
badd +4 ~/projects/meli/fury_melichat-sdk/src/core/ports/ProviderClientPort.ts
badd +10 ~/projects/meli/fury_melichat-sdk/src/infrastructure/adapters/outbound/clients/ProviderClient.ts
badd +11 ~/projects/meli/fury_melichat-sdk/src/core/domain/Provider.ts
badd +142 ~/projects/meli/fury_melichat-sdk/src/application/Melichat.ts
badd +23 ~/projects/meli/fury_melichat-sdk/src/infrastructure/configuration/services.ts
badd +11 ~/projects/meli/fury_melichat-sdk/src/infrastructure/adapters/outbound/clients/BaseRest.ts
badd +517 ~/projects/meli/fury_melichat-sdk/node_modules/axios/index.d.ts
argglobal
%argdel
edit ~/projects/meli/fury_melichat-sdk/src/infrastructure/adapters/outbound/clients/ProviderClient.ts
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
balt ~/projects/meli/fury_melichat-sdk/src/infrastructure/adapters/outbound/clients/BaseRest.ts
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
let s:l = 10 - ((9 * winheight(0) + 25) / 50)
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
