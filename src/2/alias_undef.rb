class C1
  def hello
    "Hello"
  end
end

class C2 < C1
  # メソッドの名前変更
  # alias 新しい名前　古い名前
  alias old_hello hello

  def hello
    "#{old_hello}, again!!"
  end
end

obj = C2.new
# C1のhelloのエイリアス
p obj.old_hello
# C2で再定義している
p obj.hello

class C3 < C1
  # C1で定義されていたhelloをC3では削除した
  undef hello
end

obj2 = C3.new
# エラーになる
p obj2.hello
