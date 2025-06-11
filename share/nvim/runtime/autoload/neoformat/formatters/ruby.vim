function! neoformat#formatters#ruby#enabled() abort
  return ['rubocop']
endfunction

function! neoformat#formatters#ruby#rubocop() abort
  return {
      \ 'exe': 'rubocop',
      \ 'args': [],
      \ 'stdin': 1
  \ }
endfunction
