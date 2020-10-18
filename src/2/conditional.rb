# 真 falseとnil以外
# 偽 falseとnil

# 真偽値を返すメソッドは末尾に?が付く

# empty?メソッド　文字長が0
p "".empty?
p "ad".empty?

# Regex マッチした先頭の位置 or nil
p /asd/ =~ "asd"
p /asd/ =~ "kasdf"
p /asd/ =~ "kadf"

# 論理演算 && ||
# 否定 !

# if
# if <条件> then の then は省略可
a = 1
if a == 1
  puts a
end

if a == 0
  puts a
elsif a == 1
  puts a + a
else
  puts "no"
end

# unless
a = 5
unless a == 5
  puts a
end

# case
# caseの比較は == ではなく、 ===
# === は緩い比較
# == の文字列、数値の比較だけでなく、=~などのRegexやクラスなども比較する
tags = ["a", "b", "c", "l"]

tags.each do |t|
  case t
  when "a", "c", "d"
    puts t
  when "b"
    puts "fooo #{t}"
  else
    puts "none"
  end
end

# caseで所属するクラス毎に判定
arr = [1, "asd", nil]
arr.each do |a|
  case a
  when Numeric
    puts "this is Num"
  when String
    puts "this is Str"
  else
    puts "something"
  end
end

str1 = "foo"
str2 = str1
str3 = "f" + "o" + "o"
# オブジェクトが同じか判定 equal?メソッド
p str1.equal? str2
p str1.equal? str3
# 値が同じか ==
p str1 == str2
p str1 == str3
# == とほぼ同じ eql? ※数値では異なる振る舞いをするので注意
# hashのキー比較はeql?を使って行われている
p 1.eql? 1.0
p 1 == 1.0
