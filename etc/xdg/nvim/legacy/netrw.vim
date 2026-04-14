let g:netrw_alto         = 0
let g:netrw_banner       = 0
let g:netrw_browse_split = 4
let g:netrw_liststyle    = 3
let g:netrw_preview      = 1
let g:netrw_sort_by      = "exten"
let g:netrw_winsize      = 90

nnoremap <silent> <Plug>VinegarUp :call <SID>opendir('edit')<CR>
if empty(maparg('-', 'n')) && !hasmapto('<Plug>VinegarUp')
  nmap - <Plug>VinegarUp
endif

let s:dotfiles = '\(^\|\s\s\)\zs\.\S\+'

function! s:opendir(cmd) abort
  let df = ','.s:dotfiles
  if expand('%:t')[0] ==# '.' && g:netrw_list_hide[-strlen(df):-1] ==# df
    let g:netrw_list_hide = g:netrw_list_hide[0 : -strlen(df)-1]
  endif
  if &filetype ==# 'netrw' && len(s:netrw_up)
    let basename = fnamemodify(b:netrw_curdir, ':t')
    execute s:netrw_up
    call s:seek(basename)
  elseif expand('%') =~# '^$\|^term:[\/][\/]'
    execute a:cmd '.'
  else
    execute a:cmd '%:h' . (expand('%:p') =~# '^\a\a\+:' ? s:slash() : '')
    call s:seek(expand('#:t'))
  endif
endfunction

function! s:seek(file) abort
  if get(b:, 'netrw_liststyle') == 3
    let pattern = '\%(^\|\s\+\)\zs'.escape(a:file, '.*[]~\').'[/*|@=]\=\%($\|\s\+\)'
  else
    let pattern = '^\%(| \)*'.escape(a:file, '.*[]~\').'[/*|@=]\=\%($\|\t\)'
  endif
  call search(pattern, 'wc')
  return pattern
endfunction

