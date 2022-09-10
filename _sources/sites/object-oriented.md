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



# オブジェクト指向の説明とその例題

## 手続き型プログラミングと比較する

[資料](https://github.com/naltoma/java_intro2020/blob/master/ObjectOrientedProgramming.md)。

## 貸出図書クラスの設計＆実装例

- クラス名: RentalBook
  + タイトル: title
  + バーコード: barcode

```{code-cell}

class RentalBook:
  # コンストラクタ
  def __init__(self, title, barcode):
    self.title = title;
    self.barcode = barcode;

  def printSummary(self):
    print(f"title={self.title}, barcode={self.barcode}")

book1 = RentalBook("ルートビア", 12345)
book1.printSummary()
```

## 会員クラスの設計&実装例

- Member
  + 会員番号: id
  + 氏名: name

```{code-cell}

class Member:
  def __init__(self, id, name):
    self.id = id
    self.name = name

  def getName(self):
    return self.name
book1 = RentalBook("ルートビア", 12345)
book1.printSummary()

member = Member(1, "issei")
print(member.getName())
```

## 貸出情報クラスの設計＆実装例

- クラス名: RentalLog
  + 会員: Member member
  + 貸出図書: RentalBook book
  + 貸出日: datetime.date rental_begin;
  + 返却予定日: datetime.date rental_end_plan;
  + 返却フラグ: bool returned;


```{code-cell}
import datetime

class RentalLog:
  def __init__(self, member, book):
    self.member = member
    self.book = book
    self.rental_begin = datetime.date.today()
    self.rental_end_plan = self.rental_begin + datetime.timedelta(days=7)
    self.returned = False

  def get_rental_end_plan(self):
    print(f"{self.rental_end_plan.year}年{self.rental_end_plan.month}月{self.rental_end_plan.day}日までにご返却ください")


book1 = RentalBook("ルートビア", 12345)
book1.printSummary()

member = Member(1, "issei")
print(member.getName())

log = RentalLog(member, book1)
log.get_rental_end_plan()

```


---

## クラス設計の練習

ここからは実際にクラス設計の練習を行う。
いくつか問題を用意したのでクラス設計を行なってみよう。

### 背景

先程の貸し出し図書システムに新しく有料会員システムを導入することにした。
有料会員と無料会員の違いは下記である。

- 有料会員
  + 本を合計10冊まで借りることができる
  + 貸し出し期間は一冊につき10日である
- 無料会員
  + 本を合計5冊まで借りることができる
  + 貸し出し期間は一冊につき7日である

### 練習1

Memberクラスに有料会員であるか無料会員であるかを判別するためのフィールド変数を追加しよう。
実装する方法は色々と考えられるが自分が思った通りに書いて構わない。


### 練習2

以下のMemberをコードで表現してみよう。

- 名前: issei
  + 会員番号: 3
  + 会員: 有料会員
- 名前: カニ
  + 会員番号: 4
  + 会員: 無料会員

### 練習3

一人当たりの本の貸し出し数を管理するための方法の一つとしてMemberクラスに何冊本を借りたか保存しておく方法がある。
Memberクラスに何冊本を借りたか保存するコードを書いてみよう。
また、借りた本の冊数は get_rentaled_book_num というメソッドを呼び出すと表示されるようにしよう。
実装する方法は色々と考えられるが自分が思った通りに書いて構わない。

### 練習4

今のままでは有料会員であっても貸し出し期間が7日になってしまう。
コードを修正して有料会員だと貸し出し期間が10日になるようにしよう。
