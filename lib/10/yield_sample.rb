class User
  attr_accessor :name
end

# def create
#   #  yieldでブロックないの動作が実行される
#   # yieldに渡した引数はブロック実行時の変数に代入される
#   yield  user = User.new
#   p "#{user.name}が生まれました"
# end

# create do |u|
#   u.name = "たけし"
# end

def greeting(test, &block)
  user = User.new
  block.call(user)
  p "わたしの名前は#{user.name}です。#{test}"
end

greeting("うす") do |user|
  user.name = "たけお"
end
