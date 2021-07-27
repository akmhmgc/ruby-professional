class Product
  attr_reader :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end
end

class DVD < Product
  attr_reader :label

  def initialize(name, price, label)
    super(name, price)
    @label = label
  end

  def introduce
    "name: #{name}, price: #{price} label: #{label}"
  end
end

dvd = DVD.new("百円の恋", 100, "東宝シネマズ")
