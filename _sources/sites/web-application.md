# Webアプリケーションとは

## この時間の目標

- Webアプリケーションでよく使われているプロトコルについて知る
- HTTPについて知る
- PythonでWebアプリケーションを書いてみる


## Webアプリケーションの例題
いきなり複雑な説明をされても理解が難しいため、いくつかWebアプリケーションを紹介する。

- Line
- Facebook
- その他SNS
- ネットショッピングサイト
  + Amazon
- スマホゲーム
  + プロセカ
  + 遊戯王
- Netflix
- etc...

上記で紹介したサービス以外にもWebアプリケーションは無数に存在する。
では、そもそもWebアプリケーションとは何を指すのだろうか。

## Webアプリケーションとは

もともとWebアプリケーションとはWebブラウザを介してユーザーが入力を行い、用意したサーバーで処理しユーザーに結果を返すサービス、機能のことである。

http://ext-web.edu.sgu.ac.jp/HIKO/Seminar/14thStudent/Sotsuron/Paper_Takamori.pdf
https://www.wakhok.ac.jp/~tomoharu/web2004/text/index_c1.html#doc1_id59

しかしながら、例えば Line はスマホアプリケーション上で行うツールであり、Webブラウザを介していると認識したことはないはずだ。
このように、近年Webアプリケーションの定義が少し変わってきて、現在だと **HTTP** と呼ばれるプロトコルを用いて通信しているアプリケーション = Webアプリケーションという認識を行うことが多い。
ちなみに、プロトコルとはコンピュータが通信を行うためのルールである。

つまり、Webブラウザを使わずとも、HTTPを使用していればWebアプリケーションであると言える。

## Webアプリケーションでよく使われているプロトコルについて知る

Webアプリケーションでは様々なプロトコルが使用される。ここではよくWebアプリケーションで使用されるプロトコルについて紹介する。

- HTTP
  - Hyper-Text-Transfer-Protocol の略
  - 一般的に、WebブラウザとHTTPサーバーとの間のやりとりで使われる
  - どのようにコネクションを確立するか規約されている
- TLS/SSL
  - 暗号化通信を行う仕組み
  - 他のプロトコルを暗号化する際に使用される
- 各種データベースプロトコル
  - 基本的にデータベースごとに異なる
  - 例えば MySQL の場合だと[こんな感じ](https://dev.mysql.com/doc/dev/mysql-server/latest/PAGE_PROTOCOL.html)


## HTTPレスポンスステータスコード

HTTPリクエストが正常に終了したか示すためにHTTPレスポンスステータスコードが用いられる。
この[サイト](https://developer.mozilla.org/ja/docs/Web/HTTP/Status#%E6%83%85%E5%A0%B1%E3%83%AC%E3%82%B9%E3%83%9D%E3%83%B3%E3%82%B9)を参照して、いくつかのレスポンスステータスコードを見ていくこととする。

では実際にステータスコードを確認してみよう。

```
# 200
curl -o /dev/null -s -w "%{http_code}\n" https://ie.u-ryukyu.ac.jp

# 404
curl -o /dev/null -s -w "%{http_code}\n" https://ie.u-ryukyu.ac.jp/hogehoge  
```

## HTTPリクエストメソッド

[参照](https://developer.mozilla.org/ja/docs/Web/HTTP/Methods)
