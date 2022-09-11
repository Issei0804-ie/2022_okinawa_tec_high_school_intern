---
jupytext:
  cell_metadata_json: true
  text_representation:
    extension: .md
    format_name: myst
    format_version: 0.13
    jupytext_version: 1.14.1
kernelspec:
  display_name: Python 3
  language: python
  name: python3
---

# プログラミング総合演習1

## この時間の目標
- プログラミングのステップが3つあることを理解する。
- GoogleColabを使用して資料に掲載されているサンプルコードを実行する。
- print文を使って任意の文を出力させることができる。
- 標準的な型(int, str, float)を区別できる。
- type() を使って型を確認できる。
- 変数について理解する。
- str型の変数の中身をprint文を使用して出力することができる。
- 条件について理解する。
- ループについて理解する。
- 関数について理解する。

---

## プログラミングの3ステップ

我々がプログラミングを行う際考えなければならないステップが3つある。
以下のステップに従うことで、複雑な問題であったとしてもプログラムすることができる。

1. 実現したいことに対する理解
2. 理解したことを手順として説明する
3. プログラムへ翻訳する

例題を見ていこう。あなたが「三角形の面積を求める」ということをプログラミングで実現したいとする。
その場合、プログラミングの3ステップは以下の通りとなる。

1. 実現したいことに対する理解
    + **三角形の面積を求める**と理解する
2. 理解したことを手順として説明する
    + 三角形の面積を求めるためには...
      - 手順1. 求めたい三角形の底辺と高さを知る必要がある
      - 手順2. 底辺と高さを用いて三角形の面積を計算する
3. プログラムへ翻訳する
    + 例として以下のコードを思いつく。

```{code-cell}
width = 3
height = 5
area = width * height / 2
```



## print文を使って任意の文を出力させることができる。

では、実際にPythonを書いてみよう。
まずは"Hello,World"という文字を出力してみよう。出力はprint関数を用いることで行うことができる。

```{code-cell}
# ここにprint文を書いてみる。
```

## 標準的な型(int, str, float)を区別できる。

Pythonで扱う具体的な値は全て型を持っている。
ここでは最低限覚えたいPythonが提供する型(type)について説明する。

まずはint型について説明する。
int型は整数が所持している型である。
以下の値は全てint型である。

```{code-cell}
1
3-1
100+400
100*2
```

次にfloat型について説明する。
float型は少数が所持している型である。
以下の値は全てfloat型である。

```{code-cell}
0.1
0.00001
0.1*0.1
```

次にstr型について説明する。
str型は文字列または文字が所持している型である。
以下の値は全てstr型である。

```{code-cell}
"hoge"
"sample"
"A"
'A'
```

## type() を使って型を確認できる。

ここまで標準的な型について説明してきたが、type関数を使用することで型を判別することができる。
実際に手を動かして確認してみよう。

```{code-cell}
# int型の確認
type(2)

# float型の確認
type(0.1)

# str型の確認
type("hoge")
```

## 変数について理解する。

## str型の変数の中身をprint文を使用して出力することができる。

次にprint文を使用して変数の中身を表示してみる。
例えば、"Pythonはプログラミング言語です"というstr型を持つ値に対してsentenceという名前を付けてみる。

```{code-cell}
sentence = "Pythonはプログラミング言語です"
```

さらにこれをprint文を使って出力してみる。

```{code-cell}
print(sentence)
```

これでstr型の変数の中身をprint文を使用して出力することができた。

## 条件について理解する。
まずif文について説明する。
Pythonのif文の構文は以下の通りである。

```
if 条件文:
    真の場合の処理
else: 
    偽の場合の処理
```

なお、else句については省略可能である。
また、else-if句については以下のように記述できる。

```
if 条件文1:
    条件文1が真の場合の処理
elif 条件文2:
    条件文2が真の場合の処理
else:
    条件文1,条件文2ともに偽だった場合の処理
```

では試しに、下記のコード中の"[MASK]"を穴埋めして "sub_valueは0より小さいです。" という文を出力してみよう。

```{code-cell}
---
tags: [raises-exception, hide-output]
---
# 下記は例である。
sum_value = 3 + 2
if sum_value > 3:
    print("sum_value は3より大きいです。")

sub_value = 5 - 6
# ここで sub_value が0より小さいか判定を行う。
if [MASK]:
    print("sub_valueは0より小さいです。")
else:
    print("sub_valueは0以上です。")
```

## ループについて理解する。

次にループの話をする。Pythonでループを行う方法はfor文とwhile文を使う2つの方法がある。
ここではfor文を用いたループについて説明する。
Pythonのfor文の構文は以下である。

```{code-cell}
# "ループ"という文字を10回出力する方法

for i in range(10):
    print("ループ")


```
## 関数について理解する。

Pythonにおける関数の定義方法は下記である。

```{code-cell}

def add(a, b):
  return a + b

sum = add(2,3)
print(sum)
```

また、型ヒントを使うと下記のように書き換えることができる。
```{code-cell}

def add(a: int, b :int) -> int:
  return a + b

sum = add(2,3)
print(sum)
```




