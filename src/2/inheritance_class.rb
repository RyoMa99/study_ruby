class RingArray < Array
  def [](i)
    idx = i % size
    super(idx)
  end
end

wday = RingArray["日", "月", "火"]

p wday[0]
p wday[1]
# 余りで要素を指定するように配列を拡張している
p wday[4]

=begin
Rubyにおいて全てのクラスの基底クラスになっている、ObjectクラスとBasicObjectクラスのインスタンスメソッドを確認できる。

Object.instance_methods
BasicObject.instance_methods

=end
