# 多重代入
first, second, third = 1, "2", 3

puts first
puts second

# 多重代入　配列
first, *rest = 1, 2, 3, 4, 5, 6, 7

puts rest

# 多重代入を用いた変数入れ替え
a, b = 1, 5
puts a
puts b
a, b = b, a
puts a
puts b

# 配列要素の取り出し
arr = [1, 2, 3, 4]
a, b = arr
puts a
puts b

a, *b = arr
puts b

# 先頭だけ取り出す
a, = arr # a,_ = arr のようにダミーの変数を用いて意図的に先頭だけ取り出してることを表す書き方もある。
puts a
