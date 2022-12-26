local opt = vim.opt

-- マウス操作を有効にする
opt.mouse = 'a'

-- 使用可能性のある改行コードを指定
opt.fileformats = 'unix', 'dos', 'mac'

-- ファイル読み込むときのエンコード
-- 左から順に試す
opt.fileencodings = 'ucs-bombs', 'utf-8', 'euc-jp', 'cp932'

--" 全角文字の表示に2文字分使うようにする
opt.ambiwidth = 'double'

-- スワップファイルを作成しないようにする
opt.swapfile = false

-- :q したときにバッファを消さず隠して保持しておくようにする
opt.hidden = true

-- 行番号を表示する
opt.number = true

-- 空白文字を可視化する
opt.list = true
opt.listchars= 'tab:>-', 'trail:*'

-- 良い感じにインデントしてくれるようにする
opt.smartindent = true

-- ビープ音を画面フラッシュで代替
opt.visualbell = true

-- TABキーを押したときにtab文字ではなくスペースを入力するようにする
opt.expandtab = true

-- TABキーを押したときのインデントのスペース個数を指定する
opt.tabstop = '4'

-- 自動インデントのスペース個数を指定する
opt.shiftwidth = '4'

---- 検索関係の設定
-- 大文字小文字の区別をなくす
opt.ignorecase = true

-- 検索単語に大文字が含まれていた場合特別な意味があると解釈させる
opt.smartcase = true

-- 一番下の単語まで行ったら一番上に戻るようにさせる
opt.wrapscan = true

---- lightline.vim 用
-- 常にタブページのラベル(各タブのファイル名)を表示
opt.showtabline = '2'

-- モードの表記を消す
opt.showmode = false

-- 反映時間を短くする(デフォルトは4000ms)
opt.updatetime = '250'

