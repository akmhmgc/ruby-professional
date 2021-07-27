class User
  attr_accessor :name, :weight

  def initialize(name, weight)
    @name = name
    @weight = weight
  end

  def heavier_than?(other_user)
    # インスタンスメソッドから、レシーバーをつける条件で呼び出し可能
    @weight >= other_user.weight
  end

  protected :weight
end

user1 = User.new("takeshi", 70)
user2 = User.new("yoshi", 80)

p user1.heavier_than?(user2)
p user1.weight
