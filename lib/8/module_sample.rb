class User
  include Comparable
  attr_reader :size

  def initialize(size)
    @size = size
  end

  def <=>(other)
    size <=> other.size if other.is_a?(User)
  end
end

user1 = User.new(150)
user2 = User.new(220)

p user1 < user2