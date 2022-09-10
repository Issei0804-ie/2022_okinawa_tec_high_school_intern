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

