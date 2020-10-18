class Recipt
  def initialize(name)
    # インスタンス変数は同じインスタンス内ならメソッド定義を超えて参照できる
    # 未定義はnil
    @name = name
    @lines = []
  end

  attr_accessor :name

  def output_name
    #アクセサメソッドで定義されたnameのリーダーが呼び出される
    name
  end

  def rename
    # nameというローカル変数を作ってしまう
    #name = "new name"
    # nameのライターを呼び出す
    self.name = "new name 2"
  end

  # インスタンス変数を更新する
  def lines=(lines)
    @lines = lines
  end

  # インスタンス変数を参照している
  def lines
    @lines
  end

  # アクセスメソッド
  # 上のdef linesのやつと同じ
  # attr_reader :lines #リーダー、ゲッター
  # 上のdef lines=(lines)の奴と同じ
  # attr_writer :lines #ライター、セッター
  # リーダー、ライター両方の意味
  # attr_accessor : :lines #アクセサ―、アクセスメソッド

  def calc
    total = 0
    @lines.each do |line|
      total += line[:price] * line[:num]
    end
    total
  end

  def output
    puts "レシート#{@name}"
    @lines.each do |line|
      puts "#{line[:name]} #{line[:price]} #{line[:num]}"
    end
    puts "合計 #{calc}"
  end
end

r = Recipt.new("ストアA")
r.lines = [{ name: "卵", price: 200, num: 1 }, { name: "大根", price: 100, num: 2 }]

r.output

# renameの確認
r.rename
r.output
