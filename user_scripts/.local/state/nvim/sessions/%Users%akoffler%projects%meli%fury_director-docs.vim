let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/projects/meli/fury_director-docs
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +1 ~/projects/meli/fury_director-docs/docs/guide/assets/deploy-process/deployed-workflow-version-config.png
badd +1 ~/projects/meli/fury_director-docs/docs/guide/assets/introduction/orcehstrator-direct-call.png
badd +1 ~/projects/meli/fury_director-docs/docs/guide/sdk/sdk.md
badd +1 ~/projects/meli/fury_director-docs/docs/guide/assets/deploy-process/create-environment.mp4
badd +1 ~/projects/meli/fury_director-docs/docs/guide/introduction/functionalities.md
badd +1 ~/projects/meli/fury_director-docs/docs/guide/introduction/guarantees-and-limitations.md
badd +1 ~/projects/meli/fury_director-docs/docs/guide/introduction/use-cases.md
badd +1 ~/projects/meli/fury_director-docs/docs/guide/prerequisite/prerequisite.md
badd +2 ~/projects/meli/fury_director-docs/docs/guide/support/definitions.md
badd +1 ~/projects/meli/fury_director-docs/docs/guide/support/faq.md
badd +1 ~/projects/meli/fury_director-docs/docs/guide/support/use-cases.md
badd +1 ~/projects/meli/fury_director-docs/docs/guide/user-guide/deploy-process/README.md
badd +1 ~/projects/meli/fury_director-docs/docs/guide/user-guide/deploy-process/configure-deploy.md
badd +1 ~/projects/meli/fury_director-docs/docs/guide/user-guide/deploy-process/deploy.md
badd +1 ~/projects/meli/fury_director-docs/docs/guide/user-guide/deploy-process/environments.md
badd +1 ~/projects/meli/fury_director-docs/docs/guide/user-guide/deploy-process/topic-integration.md
badd +1 ~/projects/meli/fury_director-docs/docs/guide/user-guide/deploy-process/versioning.md
badd +1 ~/projects/meli/fury_director-docs/docs/guide/user-guide/environment-management/delete-environment.md
badd +1 ~/projects/meli/fury_director-docs/docs/guide/user-guide/execution-management/cancel-execution.md
badd +1 ~/projects/meli/fury_director-docs/docs/guide/user-guide/execution-management/resume-execution.md
badd +1 ~/projects/meli/fury_director-docs/docs/guide/user-guide/execution-management/start-execution.md
badd +1 ~/projects/meli/fury_director-docs/docs/guide/user-guide/monitoring/README.md
badd +1 ~/projects/meli/fury_director-docs/docs/guide/user-guide/monitoring/executions.md
badd +1 ~/projects/meli/fury_director-docs/docs/guide/user-guide/steps-configurations-fields/delivery.md
badd +1 ~/projects/meli/fury_director-docs/docs/guide/user-guide/steps-configurations-fields/retries.md
badd +1 ~/projects/meli/fury_director-docs/docs/guide/user-guide/workflow-management/README.md
badd +1 ~/projects/meli/fury_director-docs/docs/guide/user-guide/workflow-management/api-step.md
badd +1 ~/projects/meli/fury_director-docs/docs/guide/user-guide/workflow-management/configure-step.md
badd +1 ~/projects/meli/fury_director-docs/docs/guide/user-guide/workflow-management/creating-a-new-workflow.md
badd +1 ~/projects/meli/fury_director-docs/docs/guide/user-guide/workflow-management/deactivate-workflow.md
badd +1 ~/projects/meli/fury_director-docs/docs/guide/user-guide/workflow-management/decision-step.md
badd +1 ~/projects/meli/fury_director-docs/docs/guide/user-guide/workflow-management/delete-workflow.md
badd +1 ~/projects/meli/fury_director-docs/docs/guide/user-guide/workflow-management/designing-a-new-workflow.md
badd +1 ~/projects/meli/fury_director-docs/docs/guide/user-guide/workflow-management/edit-workflows.md
badd +1 ~/projects/meli/fury_director-docs/docs/guide/user-guide/workflow-management/forkjoin-step.md
badd +1 ~/projects/meli/fury_director-docs/docs/guide/user-guide/workflow-management/reactivate-workflow.md
badd +1 ~/projects/meli/fury_director-docs/docs/guide/user-guide/workflow-management/restore-workflow.md
badd +1 ~/projects/meli/fury_director-docs/docs/guide/user-guide/workflow-management/task-step.md
badd +1 ~/projects/meli/fury_director-docs/docs/guide/user-guide/workflow-management/view-the-list-of-created-workflows.md
badd +1 ~/projects/meli/fury_director-docs/docs/guide/user-guide/workflow-management/wait-step.md
argglobal
%argdel
edit ~/projects/meli/fury_director-docs/docs/guide/user-guide/workflow-management/wait-step.md
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
balt ~/projects/meli/fury_director-docs/docs/guide/user-guide/workflow-management/view-the-list-of-created-workflows.md
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
let s:l = 1 - ((0 * winheight(0) + 20) / 41)
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
nohlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
