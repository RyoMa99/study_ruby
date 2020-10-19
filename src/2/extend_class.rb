# クラスの拡張
class String
  def count_word
    ary = self.split(" ")

    return ary.size
  end
end

str = "this is just one"
p str.count_word
