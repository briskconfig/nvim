function! neoformat#formatters#bash#enabled() abort
  return ['shfmt']
endfunction

function! neoformat#formatters#bash#shfmt() abort
  return {
      \ 'exe': 'shfmt',
      \ 'args': [],
      \ 'stdin': 1
  \ }
endfunction
