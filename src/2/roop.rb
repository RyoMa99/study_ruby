# 使い分け
# シンプルなしてい回数ループ times
# それ以外 while each

# 見やすい書き方
# do ~ end 複数行になるとき
# { ~ } 一行で書く時

# timesメソッド
# シンプルに指定回数分繰り返す
7.times do |i|
  puts i
  puts "do times"
end

7.times { |i|
  puts i
  puts "another syntax"
}

# for文
# 開始の値や終了の値を変更させる書き方をする時、timesメソッドよりシンプルに書ける
# .. は範囲オブジェクトを作る
sum = 0
for i in 1..5
  sum += i
  puts sum
end
# 配列などを回すときに使うのがよくある形
names = ["asd", "dfg", "ghj", "jkl"]
for name in names
  puts name
  puts "-----"
end

# while文
sum = 0
i = 0
while sum < 30
  sum += i
  p sum
  i += 1
end

# until文
# 複雑な条件式でその否定が直感的でない場合を除き、while文を使うべき
sum = 0
i = 0
until sum > 30
  sum += i
  p sum
  i += 1
end

# eachメソッド
# for文は内部的にはeachメソッドが使われている
names = ["asd", "dfg", "ghj", "jkl"]
names.each do |name|
  puts name
  puts "-----"
end

names.each { |name|
  puts name
  puts "-----"
}

(1..5).each { |i|
  puts i
}

# loopメソッド
# 無限ループ
i = 0
loop do
  i += 1

  if i > 10
    break
  end

  if i == 2
    next
  end

  puts i
end
