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

* まだ少し問題が残ってるかも
  * build 時の WARNING in site.bundle.js from UglifyJs
* まじめにクラスを書いてみる
* まじめにドキュメントを書いてみる
* まじめにテストを書いてみる
* tslint
  * 設定
* TS フォーマッタ
  * 設定
