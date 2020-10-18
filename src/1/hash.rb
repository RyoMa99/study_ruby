# ハッシュ
person = {
  "as" => "lk",
  "dd" => "jf",
}

song = {
  :title => "asd",
  :artist => "dfg",
}
# シンボルの場合は省略基本が使える
song = {
  title: "asd",
  artist: "dfg",
}

# ハッシュ、オブジェクト呼び出し
p song[:title]
# ハッシュ、オブジェクト追加
song[:tel] = "090-1234-5678"
p song

# ハッシュ、繰り返し
song.each do |k, v|
  puts "keyは#{k}"
  puts "valueは#{v}"
end
