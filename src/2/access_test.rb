class AccessTest
  def pub
    puts "this is public"
  end

  public :pub

  def pri
    puts "this is private"
  end

  private :pri
end

access = AccessTest.new
access.pub
# access.pri

class AccessTest2
  # 引数がなければそれ以下に書いた関数は全てそのアクセス制限が適用される
  public

  def pub1
    puts "pub1"
  end

  def pub2
    puts "pub2"
  end
end

access2 = AccessTest2.new
access2.pub1
access2.pub2
