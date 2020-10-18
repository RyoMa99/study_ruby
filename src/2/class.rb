# インスタンス作成
arr = Array.new
p arr
# 所属するクラスを調べる
p arr.class
p arr.instance_of? Array

# Rubyのクラスは全てBasicObjectクラスのサブクラス
# BasicObjectクラスは機能がほとんど削られている。
# Objectクラスは通常のクラスに必要な機能が定義されている。

str = "This is String"
p str.is_a?(String)
p str.is_a?(Object)
