# ruby file.txt
# 上記のコマンドで同ディレクトリのtext.txtの中身が表示される
filename = ARGV[0]
file = File.open(filename)
text = file.read
puts text
file.close

# 読み込みだけならopen closeは必要ない
filename = ARGV[0]
text = File.read(filename)
puts text

# fileを一行ずつ読み込む
filename = ARGV[0]
file = File.open(filename)
# each_lineメソッドはfileオブジェクトを一行ずつ実行するのに使う
file.each_line do |l|
  puts l
  puts "------"
end
file.close
