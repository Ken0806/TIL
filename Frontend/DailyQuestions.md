# ベンダープレフィックス
## 概要
ブラウザーベンダー (提供元) は、時に試験的または非標準な CSS プロパティおよび JavaScript API に接頭辞を追加することがあります。
(https://developer.mozilla.org/ja/docs/Glossary/Vendor_Prefix)

ベンダープレフィックスとは、CSSの新しいプロパティに付けて、記述したプロパティが拡張機能であることを、各ブラウザに示すために使われる識別子です。草案段階の仕様を先行実装する場合にも使用されます。勧告されたばかりのプロパティにベンダープレフィックスをつけることで、ブラウザはそれらの新しいプロパティに対応することができます。
(https://www.itra.co.jp/webmedia/bender-prefix.html)

## 主なベンダープレフィックス
主要なブラウザーは、以下の接頭辞を使用しています。
- -webkit- (Chrome, Safari, 新しいバージョンの Opera, ほぼすべての iOS ブラウザー (Firefox for iOS を含む)。基本的に WebKit ベースのブラウザーすべて)
- -moz- (Firefox)
- -o- (WebKit 導入前の古い Opera)
- -ms- (Internet Explorer と Microsoft Edge)
(https://developer.mozilla.org/ja/docs/Glossary/Vendor_Prefix)

## 例
div {
  transform: rotate(45deg);
  -ms-transform: rotate(45deg);
  -webkit-transform: rotate(45deg);
}

## 注意点
1. ベンダープレフィックスなしのプロパティも記述する点
新しいプロパティを使用する際は、ベンダープレフィックスをつけないプロパティも併用して記述しておく必要があります。これは、仕様が変更されたり、機能が廃止されたり、新しい機能が追加されるなどの可能性があるためです。

2. 機能が普及したらベンダープレフィックスを外す点
草案段階であった機能が勧告候補になった際には、ベンダープレフィックスを外すことが推奨されています。ベンダープレフィックスがなくても動作するようになった機能には、併用して記述していたベンダープレフィックスなしのプロパティだけを残すようにしましょう。
