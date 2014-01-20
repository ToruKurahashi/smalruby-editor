# encoding: utf-8
# language: ja
@javascript
@standalone
機能: Check - プログラムのエラーチェック(standaloneモード)
  シナリオ: セーブ後、プログラムにシンタックスエラーがないことをチェックできる
    前提 "Ruby" タブを表示する
    かつ テキストエディタに "puts 'Hello, World!'" を入力済みである
    かつ プログラムの名前に "01.rb" を指定する

    もし "セーブボタン" をクリックする
    かつ JavaScriptによるリクエストが終わるまで待つ

    ならば "メッセージ" に "チェックしました" を含むこと
    かつ "メッセージ" に "ただし、プログラムを動かすとエラーが見つかるかもしれません。" を含むこと

  シナリオ: セーブ後、プログラムにシンタックスエラーがあることをチェックできる
    前提 "Ruby" タブを表示する
    かつ プログラムの名前に "01.rb" を指定する
    かつ テキストエディタに "puts Hello, World!'" を入力済みである

    もし "セーブボタン" をクリックする
    かつ JavaScriptによるリクエストが終わるまで待つ

    ならば "メッセージ" に "エラー" を含むこと
    かつ "メッセージ" に "1行、19文字: syntax error, unexpected tSTRING_BEG, expecting keyword_do or '{' or '('" を含むこと
    かつ "メッセージ" に "1行: unterminated string meets end of file" を含むこと
    かつ "メッセージ" に "チェックしました" を含まないこと
