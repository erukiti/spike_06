TypeScriptのプロジェクトのたたき台
==================================

* TypeScript
* webpack
* gulp
* mocha
* yuidoc
* less
* bootstrap

などのサンプルを作ってみた。

インストール
------------

```sh
$ npm install -g gulp typescript-formatter tsd@next
```

```sh
$ npm install
$ tsd install
```

使い方
------

### 開発

```sh
$ gulp
```

### ビルド

```sh
$ gulp build
```

### TypeScript コード整形

```sh
$ gulp format
```

ポイント
--------

* タスクランナーは最近イケてるgulp
* 開発を助けるタスク定義
  * ドキュメント生成
  * tslint
  * ユニットテスト
  * コードフォーマット

TODO
----

* 色々と問題あり
  * ユニットテストで、何故か型情報ファイルが読み込めない
  * doc 生成うまくいったりいかなかったり
  * webpack-dev-server での build で謎の not found.
  * webpack での build で謎の notfound.

* まじめにクラスを書いてみる
* まじめにドキュメントを書いてみる
* まじめにテストを書いてみる
* 開発で watch してテストを自動で走らせる
* gulpfile をリファクタリングする
  * 分割
* tslint
  * 設定
* TS フォーマッタ
  * 設定
