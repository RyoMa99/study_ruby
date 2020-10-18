# 条件分岐
a = 10
if a > 5
  puts "larger"
end

if a > 3
  puts "larger!!"
else
  puts "smaller"
end

if a > 20
  puts "so large"
elsif a > 8
  puts "large"
else
  puts "so so"
end

# 繰り返し
# 前置判定
i = 1
while i < 10
  puts i
  i = i + 1
end
# 後置判定
j = 10
begin
  puts j
  j = j - 1
end while j > 0

# until文
begin
  puts j
  j = j + 2
end until j > 10

10.times do
  puts "go"
end
