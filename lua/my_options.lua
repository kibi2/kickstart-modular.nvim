-- NOTE: option.lua の上書き

-- クリップボードの共有はしない
vim.opt.clipboard = ''

-- Keep signcolumn on by default
vim.opt.signcolumn = 'yes:1' -- サインカラムを表示

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 2

-- NOTE: 個人的なオプション設定

-- ファイル
-- エンコーディングをUTF-8に設定
vim.opt.fileencoding = 'utf-8'

-- スワップファイルを作成しない
vim.opt.swapfile = false

-- vim.opt.helplang = "ja" -- ヘルプファイルの言語は日本語

-- バッファを切り替えるときにファイルを保存しなくてもOKに
vim.opt.hidden = true

-- メニューとコマンド
vim.opt.wildmenu = true -- コマンドラインで補完
vim.opt.cmdheight = 1 -- コマンドラインの表示行数
vim.opt.laststatus = 2 -- 下部にステータスラインを表示
vim.opt.showcmd = true -- コマンドラインに入力されたコマンドを表示

-- 検索・置換え
vim.opt.incsearch = true -- インクリメンタルサーチを有効
vim.opt.matchtime = 1 -- 入力された文字列がマッチするまでにかかる時間

-- カラースキーム
vim.opt.termguicolors = true -- 24 ビットカラーを使用
vim.opt.background = 'dark' -- ダークカラーを使用する

-- インデント
vim.opt.tabstop = 2 -- タブ幅を2に設定する
vim.opt.shiftwidth = 2 -- シフト幅を2に設定する
vim.opt.expandtab = true -- タブ文字をスペースに置き換える
vim.opt.autoindent = true -- 自動インデントを有効にする
vim.opt.smartindent = true -- インデントをスマートに調整する

-- 表示
vim.opt.wrap = true -- テキストの自動折り返しを無効に
vim.opt.showtabline = 2 -- タブラインを表示
-- （1:常に表示、2:タブが開かれたときに表示）
-- vim.opt.visualbell = true -- ビープ音を表示する代わりに画面をフラッシュ
-- vim.opt.showmatch = true -- 対応する括弧をハイライト表示
-- カーソルの形状
vim.o.guicursor = 'n-v-c-sm:block,i-ci-ve:ver25,r-cr-o:hor20'

-- Determine how text with the "conceal" syntax attribute
vim.api.nvim_set_option_value('conceallevel', 1, {})
vim.api.nvim_set_option_value('concealcursor', '', {})

-- :! でZshを起動するときのフラグ
vim.api.nvim_set_option_value('shellcmdflag', '-c', {}) -- zsh 用

-- マスタリングVim : p55
-- ウィンドウを閉じずにバッファを閉じる
vim.api.nvim_create_user_command('Bd', ':bp|:sp|:bn|:bd', {})

-- システムクリップボードを使う。:h provider-clipboard
vim.g.clipboard = {
  name = 'WslClipboard',
  copy = {
    ['+'] = 'clip.exe',
    ['*'] = 'clip.exe',
  },
  paste = {
    ['+'] = 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
    ['*'] = 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
    ['cache_enabled'] = 0,
  },
}

-- vim: ts=2 sts=2 sw=2 et
