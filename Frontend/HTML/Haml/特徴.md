# 特徴
- 閉じタグがない。その分インデントでずれている部分(半角2つ分)が範囲を示す。

# 書き方一覧
## DOCTYPE
<!DOCTYPE html>
↓
!!!

## タグ
<~></~>
↓
%~

## 属性
<a href="http://www.pikawaka.com">
  ピカわか！
</a>
↓
%a(href="http://www.pikawaka.com")
or
%a{href: "http://www.pikawaka.com"} // hashのような書き方

## ID
<div id='id_test'></div> // 単数定義
↓
%div#id_test

<div id='id_test1 id_test2'></div> // 複数定義
↓
%div#id_test1#id_test2

## class
<div class='class_test'></div> // 単数定義
↓
%div.class_test

<div id='id_test' class='class_test1 class_test2'></div> // 単数定義
↓
%div#id_test.class_test1.class_test2  // 複数定義

## コメントアウト
<!-- out -->
↓
/ out
or
-# out // コメントをコンパイル後に表示させたくない時

<!-- 
out 
out
-->
↓
/ 
  out
  out

## JavaScript
### pattern1
<script> 
  code
</script>
↓
:javascript {
  code
}

### pattern2
<script> 
  alert('test');
</script>
↓
%script alert('test')

# カスタムデータ属性
<span data-target='hogehoge'></span>
↓
%span{ data: { target: 'hogehoge' } }

# Rubyのコード
<% @articles.each do |article| %>
  <p>
    <%= article.title %>
  </p>
  <p>
    <%= article.body %>
  </p>
<% end %>
↓
- @articles.each do |article|
  %p= article.title
  %p= article.body

## - と = の違い
In haml
= is used to write ruby code and displays the result as output
Where as - is used to write ruby code within haml and no output is diplayed.
(参照: https://stackoverflow.com/questions/30207750/what-is-the-difference-between-and-in-haml-while-writing-ruby-code)

# 変数定義の仕方
hamlではhamlファイルの中で変数を定義することができます。
<p>私の名前はピカわかです。</p>
↓
- name = 'ピカわか'
%p= "私の名前は#{name}です。"
