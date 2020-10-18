# メソッドの()は省略可
# オブジェクト.メソッド 引数, ....
# 上記のオブジェクトをレシーバとも呼ぶ
# メソッドを実行することは「オブジェクトにメッセージを送る」とも言われるから

#メソッドの種類

# インスタンスメソッド
# 一般的なメソッド。あるオブジェクトがあった時のそのオブジェクトをレシーバとするメソッド
puts "10,20,30,40".split ","
p Time.now.to_s

# クラスメソッド
# レシーバがインスタンスではなく、クラスそのもの。
# インスタンスを作るときに使われることが多い
# . の代わりに :: を使うことも出来る
# Array.new
# File.open("filename")

# 関数的メソッド
# レシーバになるオブジェクトが省略されているメソッド
print "hello\n"

# マニュアルなどの表記法
# インスタンスメソッド クラス名#メソッド名
# クラスメソッド クラス名.メソッド名 クラス名::メソッド名

# メソッド定義
# アルファベット、数字、_ が使える
# 先頭に数字は使えない
# デフォルト引数は下のような書き方をする
def hello(name = "Ruby")
  puts name
end

hello
hello "Jack"

# return文を省略した場合はメソッドの最後に得られる値が戻り値になる
# returnの引数を省略するとnilが返る

# ブロック付きメソッドの定義
# yeildが重要
def myloop
  while true
    yield
  end
end

num = 1
myloop do
  puts num
  break if num > 10
  num *= 2
end

# 引数の数が不定
def foo(*args)
  args
end

p foo(1, 2, 3)

def bar(arg, *args)
  [arg, args]
end

p bar(1)
p bar(1, 2, 3)

# キーワード引数
# 名:値 の形で書く
# デフォルト値を指定することが出来る
# デフォルト値が省略された引数は、呼び出し時に省略できない
def hoo(x: 0, y: 1)
  p x
  p y
end

hoo(x: 10, y: 40)
hoo(y: 5, x: 100)
hoo(y: 80)

# 定義に無い引数名を指定したら ArgumentError
# ArgumentErrorを出さない為に下記のような書き方をすることがある
def boo(x: 0, y: 0, **args)
  [x, y, args]
end

p boo(x: 1, y: 2, z: 3, q: 4, b: 5)

# キーワード引数と普通の引数の組み合わせ
def func1(a, b: 1)
  [a, b]
end

p func1(1, b: 3)

# ハッシュで引数を渡す
# キーはシンボルでないといけない
# デフォルト値のあるキーワードは省略可
# 余分なキーを与えるとエラー
def func2(a: 0, b: 0)
  [a, b]
end

p func2({ a: 5, b: 3 })
p func2({ a: 5 })
# {}の省略可
p func2(a: 5)

# 引数の配列を展開して渡す
def func3(a, b, c)
  [a, b, c]
end

p func3(*[1, 2, 3])
