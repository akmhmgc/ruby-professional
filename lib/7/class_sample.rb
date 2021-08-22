class Product
  attr_reader :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end

  def introduce
    "name: #{name}, price: #{price}"
  end

  def nedan
    "this is #{price}"
  end
end

class DVD < Product
  attr_reader :label

  def initialize(name, price, label)
    super(name, price)
    @label = label
  end

  def introduce
    # 親クラスのインスタンス同名のインスタンスメソッドを呼び出し可能
    "#{super} label: #{label}"
  end
end

dvd = DVD.new("パイレーツオブカリビアン", 2000, "東映")
puts dvd.nedan

