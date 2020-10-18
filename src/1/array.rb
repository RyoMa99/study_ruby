# 配列宣言
names = ["ab", "de", "da"]

# 配列要素呼び出し
puts names[1]

# 要素入れ替え
names[1] = "fds"
puts names[1]

# 配列全表示
puts names

# 要素の型は複数可
mixed = [1, "asdf"]
puts mixed

# 配列サイズ
puts mixed.size

# 配列の繰り返し
mixed.each do |n|
  puts "変数の中身は#{n}"
end
