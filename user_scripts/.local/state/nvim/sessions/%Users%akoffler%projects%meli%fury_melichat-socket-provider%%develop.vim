let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/projects/meli/fury_melichat-socket-provider
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +764 ~/projects/meli/fury_melichat-socket-provider/cmd/api/router.go
badd +68 ~/projects/meli/fury_melichat-socket-provider/internal/infrastructure/adapters/inbound/controllers/admin.go
badd +53 ~/projects/meli/fury_melichat-socket-provider/internal/infrastructure/adapters/inbound/controllers/message.go
badd +50 ~/projects/meli/fury_melichat-socket-provider/internal/infrastructure/adapters/inbound/controllers/users.go
badd +1 ~/projects/meli/fury_melichat-socket-provider/internal/infrastructure/adapters/inbound/controllers/webhook.go
badd +14 ~/projects/meli/fury_melichat-socket-provider/internal/core/domain/connection.go
badd +20 ~/projects/meli/fury_melichat-socket-provider/internal/core/domain/provider.go
badd +73 ~/projects/meli/fury_melichat-socket-provider/internal/core/domain/message.go
badd +153 internal/infrastructure/services/message.go
badd +9 ~/projects/meli/fury_melichat-socket-provider/internal/core/domain/validation/validate.go
badd +156 ~/projects/meli/fury_melichat-socket-provider/internal/infrastructure/services/connection.go
badd +16 ~/projects/meli/fury_melichat-socket-provider/internal/core/ports/connection_repository.go
badd +10 ~/projects/meli/fury_melichat-socket-provider/internal/core/ports/message_client.go
badd +13 ~/projects/meli/fury_melichat-socket-provider/internal/core/ports/lock.go
badd +12 ~/projects/meli/fury_melichat-socket-provider/internal/core/ports/cache_repository.go
badd +6 ~/projects/meli/fury_melichat-socket-provider/internal/core/ports/cryptography.go
badd +14 ~/projects/meli/fury_melichat-socket-provider/internal/core/ports/cache_connection_repository.go
badd +151 ~/projects/meli/fury_melichat-socket-provider/internal/infrastructure/adapters/outbound/repositories/connection_kvs.go
badd +23 ~/projects/meli/fury_melichat-socket-provider/internal/infrastructure/adapters/outbound/repositories/cache_kvs.go
badd +96 ~/projects/meli/fury_melichat-socket-provider/internal/infrastructure/adapters/outbound/repositories/cache_connection.go
badd +47 ~/projects/meli/fury_melichat-socket-provider/internal/infrastructure/adapters/outbound/repositories/cache_kvs_test.go
badd +481 ~/projects/meli/fury_melichat-socket-provider/internal/infrastructure/services/connection_test.go
badd +797 ~/projects/meli/fury_melichat-socket-provider/internal/infrastructure/adapters/inbound/controllers/message_test.go
badd +24 ~/projects/meli/fury_melichat-socket-provider/internal/infrastructure/adapters/inbound/controllers/dto/stream.go
badd +11 ~/go/pkg/mod/github.com/melisource/fury_go-toolkit-lock@v1.2.0/pkg/locker/lock.go
badd +6 ~/projects/meli/fury_melichat-socket-provider/pkg/apperror/enums/errors.go
badd +3 ~/projects/meli/fury_melichat-socket-provider/internal/infrastructure/adapters/outbound/clients/message_aws.go
badd +76 ~/go/pkg/mod/github.com/aws/aws-sdk-go@v1.44.19/service/apigatewaymanagementapi/apigatewaymanagementapiiface/interface.go
badd +742 ~/go/pkg/mod/github.com/aws/aws-sdk-go@v1.44.19/service/apigatewaymanagementapi/api.go
badd +522 ~/projects/meli/fury_melichat-socket-provider/internal/infrastructure/adapters/outbound/repositories/cache_connection_test.go
badd +47 ~/go/pkg/mod/github.com/melisource/fury_go-core@v1.11.2/pkg/telemetry/span.go
badd +1 ~/projects/meli/fury_melichat-socket-provider/internal/infrastructure/adapters/outbound/repositories/lock/wrapper.go
badd +14 ~/projects/meli/fury_melichat-socket-provider/internal/infrastructure/configuration/aws.go
argglobal
%argdel
edit ~/projects/meli/fury_melichat-socket-provider/internal/infrastructure/adapters/outbound/clients/message_aws.go
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
balt ~/projects/meli/fury_melichat-socket-provider/internal/infrastructure/configuration/aws.go
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
let s:l = 3 - ((2 * winheight(0) + 23) / 47)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 3
normal! 08|
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
