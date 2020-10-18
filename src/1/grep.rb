# fileを一行ずつ読み込みながら特定パターン行だけ表示する
filename = ARGV[0]
pattern = Regexp.new(ARGV[1])

file = File.open(filename)
file.each_line do |l|
  if pattern =~ l
    puts l
    puts "------"
  end
end
file.close
