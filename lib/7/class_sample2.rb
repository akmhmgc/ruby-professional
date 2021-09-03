class People
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end

  def introduction
    puts "I am #{name} and #{age} years old"
  end
end

class Product
  attr_accessor :price, :name

  def initialize(name, price)
    @name = name
    @price = price
  end

  def self.format(name, price)
    "name: #{name}, price: #{price}"
  end

  def introduction
    # self.classでインスタンスが所属しているクラスを示す
    p self.class.format(name,price)
  end
end
