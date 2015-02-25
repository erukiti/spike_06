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
$ npm install -g gulp
```

```sh
$ npm install
$ gulp install
```

使い方
------

### 開発1

```sh
$ gulp
```

ローカルで動かしている場合、自動でブラウザが起動される

### 開発2

```sh
$ gulp watch
```

ブラウザは起動されてないのでユニットテストベースで開発するか、dist/index.html をブラウザで開く

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

* まだ少し問題が残ってるかも
  * build 時の WARNING in site.bundle.js from UglifyJs
  * watch タスク周りの整備
  * webpack-dev-server での ts watch
* まじめにクラスを書いてみる
* まじめにドキュメントを書いてみる
* まじめにテストを書いてみる
* tslint
  * 設定
* TS フォーマッタ
  * 設定
