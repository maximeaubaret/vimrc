set guifont=Office\ Code\ Pro:h14
" set guifont=Sauce\ Code\ Powerline\ Plus\ Nerd\ File\ Types:h18
set transparency=10

" Remove the scrollbar
set go-=L
set guioptions-=r
set guioptions-=T

set showtabline=0

function Code()
  colorscheme github
  set transparency=0
  set guifont=Office\ Code\ Pro:h18
  :LiteDFMToggle
endfunction
command! Code call Code()
