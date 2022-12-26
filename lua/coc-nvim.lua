-- coc.nvim settings
--- <Tab>で候補をナビゲート
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

--- <Tab>で次、<S+Tab>で前
inoremap <silent><expr> <TAB>
  \ coc#pum#visible() ? coc#pum#next(1):
  \ <SID>check_back_space() ? "\<Tab>" :
  \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

let g:coc_global_extensions = [
      \'coc-html', 
      \'coc-jedi', 
      \'coc-solargraph', 
      \'coc-git', 
      \'coc-json', 
      \'coc-rust-analyzer'
\]
