function! neoformat#formatters#json#enabled() abort
  return ['fixjson']
endfunction

function! neoformat#formatters#json#fixjson() abort
  return {
      \ 'exe': 'fixjson',
      \ 'args': [],
      \ 'stdin': 1
  \ }
endfunction
