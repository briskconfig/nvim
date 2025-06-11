inoremap { {}<Left>
inoremap {<Space> {<Space><Space><C-o>mh}<C-o>`h
inoremap {<CR> {<CR>}<ESC>O<TAB>
inoremap {{ {
inoremap {} {}

inoremap < <><Left>
inoremap <<CR> <<CR>><ESC>O<TAB>
inoremap << <
inoremap <> <>

inoremap [ []<Left>
inoremap [<Space> [<Space><Space><C-o>mh]<C-o>`h
inoremap [[<Space> [[<Space><Space><C-o>mh]]<C-o>`h
inoremap [<CR> [<CR>]<ESC>O<TAB>
inoremap [[ [
inoremap [] []

inoremap ( ()<Left>
inoremap (<Space> (<Space><Space><C-o>mh)<C-o>`h
inoremap ((<Space> ((<Space><Space><C-o>mh))<C-o>`h
inoremap (<CR> (<CR>)<ESC>O<TAB>
inoremap (( (
inoremap () ()

inoremap " ""<Left>
inoremap "" "
inoremap """ """  <c-o>mh"""<c-o>`h

inoremap ' ''<Left>
inoremap '' '
inoremap ''' '''  <c-o>mh'''<c-o>`h

inoremap ` ``<Left>
inoremap `` `
inoremap ``` ```  <c-o>mh```<c-o>`h

inoremap /* /*<Space><Space>*/<Left><Left><Left>

"" Ruby html.erb interpolation
imap %% %<Space><ESC>mqa<Space>%<ESC>`qa
imap %= %=<Space><ESC>mqa<Space>%<ESC>`qa

"" Surround text with a bracket-char
vmap s" <ESC>`>a"<ESC>`<i"
vmap s' <ESC>`>a'<ESC>`<i'
vmap s` <ESC>`>a`<ESC>`<i`
vmap s( <ESC>`>a)<ESC>`<i(
vmap s{ <ESC>`>a}<ESC>`<i{
vmap s[ <ESC>`>a]<ESC>`<i[
vmap s< <ESC>`>a><ESC>`<i<

"" Insert at begining of line
vmap <TAB> mh<C-v>0I<TAB><ESC>`h2l
vmap <M-TAB> mh<C-v>0<C-c><C-v>`<0x.<ESC>`h2h
vmap # mh<C-v>0I#<Space><ESC>`h2l
