# encoding: UTF-8
# マジックコメント
# 一行目に上記のように記述すればそのファイルで使う文字コードを指定できる
# Shift_JISは下記の通り
# encoding: Shift_JIS

print "改行しない"
print "Hello!\n"

puts "必ず改行する"

# 引数の型が分かる形で出力
p 100
p "100"

# 複数引数を渡す書き方もできる
print "a" "b" "c" "\n"

# 変数を文字列中に含める
num = 100
print "数字は#{num}です\n"

# ppはオブジェクト構造の表示を良い感じにしてくれる
p 10
pp num

=begin
複数行コメントの書き方
=end
