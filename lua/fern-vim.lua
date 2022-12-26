--" fern.vim settings
-- 参考: https://qiita.com/youichiro/items/b4748b3e96106d25c5bc#%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB%E3%83%84%E3%83%AA%E3%83%BC%E3%82%92%E8%A1%A8%E7%A4%BA%E3%81%99%E3%82%8B
-- Ctrl+nでファイルツリーを表示/非表示する
nnoremap <C-n> :Fern . -reveal=% -drawer -toggle -width=40<CR>
-- アイコン表示を有効にする
let g:fern#renderer = 'nerdfont'
-- アイコンに色をつける
augroup my-glyph-palette
  autocmd! *
  autocmd FileType fern call glyph_palette#apply()
  autocmd FileType nerdtree,startify call glyph_palette#apply()
augroup END
-- ドットファイルを表示させる
let g:fern#default_hidden=1
