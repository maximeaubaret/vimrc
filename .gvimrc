set guifont=Office\ Code\ Pro:h14
set guifont=Ubuntu\ Mono:h18
" set guifont=Sauce\ Code\ Powerline\ Plus\ Nerd\ File\ Types:h18
"
set transparency=5
colorscheme mod8

" Remove the scrollbar
set go-=L
set guioptions-=r
set guioptions-=T

set showtabline=0

function Code()
  set transparency=5
  set guifont=Office\ Code\ Pro:h18
  :LiteDFMToggle
endfunction
command! Code call Code()

