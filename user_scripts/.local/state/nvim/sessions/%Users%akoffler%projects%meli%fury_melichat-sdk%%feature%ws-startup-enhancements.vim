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
badd +87 ~/projects/meli/fury_melichat-sdk/src/infrastructure/services/WebsocketService.ts
badd +8 ~/projects/meli/fury_melichat-sdk/src/infrastructure/services/WebsocketService.test.ts
badd +10 ~/projects/meli/fury_melichat-sdk/package.json
badd +100 src/infrastructure/adapters/outbound/clients/websocket/WebsocketBuilder.ts
badd +126 src/infrastructure/adapters/outbound/clients/websocket/Websocket.ts
badd +16501 node_modules/typescript/lib/lib.dom.d.ts
badd +1 ~/projects/meli/fury_melichat-sdk/src/infrastructure/adapters/outbound/clients/websocket/WebsocketProvider.ts
badd +11 ~/projects/meli/fury_melichat-sdk/src/infrastructure/adapters/inbound/controllers/WebsocketController.ts
badd +55 ~/projects/meli/fury_melichat-sdk/src/infrastructure/adapters/outbound/clients/websocket/Websocket.test.ts
badd +29 ~/projects/meli/fury_melichat-sdk/src/infrastructure/adapters/outbound/clients/websocket/WebsocketBuilder.test.ts
badd +20 ~/projects/meli/fury_melichat-sdk/src/infrastructure/services/ProviderService.ts
badd +4 ~/projects/meli/fury_melichat-sdk/src/core/ports/ProviderClientPort.ts
badd +12 ~/projects/meli/fury_melichat-sdk/src/infrastructure/adapters/outbound/clients/ProviderClient.ts
badd +52 ~/projects/meli/fury_melichat-sdk/src/infrastructure/services/ProviderService.test.ts
badd +499 ~/projects/meli/fury_melichat-sdk/node_modules/@types/node/globals.d.ts
badd +273 ~/projects/meli/fury_melichat-sdk/src/infrastructure/configuration/App.ts
badd +74 ~/projects/meli/fury_melichat-sdk/src/infrastructure/adapters/outbound/clients/MessageClient.ts
badd +177 ~/projects/meli/fury_melichat-sdk/test/application/Melichat.test.ts
badd +6 ~/projects/meli/fury_melichat-sdk/src/infrastructure/services/LogService.ts
badd +1520 ~/projects/meli/fury_melichat-sdk/node_modules/typescript/lib/lib.es5.d.ts
badd +9 ~/projects/meli/fury_melichat-sdk/src/core/domain/Provider.ts
badd +2 ~/projects/meli/fury_melichat-sdk/src/infrastructure/services/TranscriptService.ts
badd +518 ~/projects/meli/fury_melichat-sdk/node_modules/axios/index.d.ts
badd +11 ~/projects/meli/fury_melichat-sdk/src/infrastructure/adapters/outbound/clients/BaseRest.ts
badd +16 ~/projects/meli/fury_melichat-sdk/src/infrastructure/configuration/controllers.ts
badd +24 ~/projects/meli/fury_melichat-sdk/src/infrastructure/configuration/services.ts
badd +1 ~/projects/meli/fury_melichat-sdk/docs/guide/README.md
badd +1 ~/projects/meli/fury_melichat-sdk/docs/guide/index.html
badd +1 ~/projects/meli/fury_melichat-sdk/src/index.ts
badd +48 ~/projects/meli/fury_melichat-sdk/README.md
badd +1 ~/projects/meli/fury_melichat-sdk/webpack.config.js
badd +29 ~/projects/meli/fury_melichat-sdk/src/infrastructure/services/AttachmentService.ts
badd +172 ~/projects/meli/fury_melichat-sdk/src/application/MelichatGlobal.ts
badd +1 ~/projects/meli/fury_melichat-sdk/Dockerfile.runtime
badd +1 ~/projects/meli/fury_melichat-sdk/Dockerfile
badd +17 ~/projects/meli/fury_melichat-sdk/src/infrastructure/services/MessageService.ts
badd +12 ~/projects/meli/fury_melichat-sdk/src/infrastructure/adapters/inbound/controllers/MessageController.ts
badd +1677 ~/projects/meli/fury_melichat-sdk/node_modules/@types/node/process.d.ts
badd +64 ~/projects/meli/fury_melichat-sdk/node_modules/typescript/lib/lib.es2015.promise.d.ts
badd +60 ~/projects/meli/fury_melichat-sdk/src/infrastructure/common/apperror.ts
badd +7 ~/projects/meli/fury_melichat-sdk/src/core/common/types/Custom.ts
badd +15 ~/projects/meli/fury_melichat-sdk/src/infrastructure/adapters/outbound/clients/ChatClient.ts
badd +208 ~/projects/meli/fury_melichat-sdk/src/application/Melichat.ts
badd +30 ~/projects/meli/fury_melichat-sdk/src/infrastructure/services/LogService.test.ts
badd +8 ~/projects/meli/fury_melichat-sdk/src/core/ports/MessageClientPort.ts
badd +1 ~/projects/meli/fury_melichat-sdk/node_modules/class-validator/types/index.d.ts
badd +1 ~/projects/meli/fury_melichat-sdk/src/infrastructure/adapters/outbound/clients/websocket/buffer/Buffer.ts
badd +45 ~/projects/meli/fury_melichat-sdk/src/infrastructure/adapters/inbound/controllers/ChatController.ts
badd +11 ~/projects/meli/fury_melichat-sdk/src/infrastructure/services/ChatService.ts
badd +6 ~/projects/meli/fury_melichat-sdk/src/core/ports/ChatClientPort.ts
argglobal
%argdel
edit src/infrastructure/adapters/outbound/clients/websocket/Websocket.ts
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
balt src/infrastructure/adapters/outbound/clients/websocket/WebsocketBuilder.ts
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
let s:l = 126 - ((41 * winheight(0) + 25) / 50)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 126
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
