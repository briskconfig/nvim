function! neoformat#formatters#javascript#enabled() abort
  return ['prettierd']
endfunction

function! neoformat#formatters#javascript#prettierd() abort
  return {
      \ 'exe': 'prettierd',
      \ 'args': [],
      \ 'stdin': 1
  \ }
endfunction
