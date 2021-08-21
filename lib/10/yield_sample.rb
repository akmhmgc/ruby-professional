class User
  attr_accessor :name
end

def create
  #  yieldでブロックないの動作が実行される
  # yieldに渡した引数はブロック実行時の変数に代入される
  yield  user = User.new
  p "#{user.name}が生まれました"
end

create do |u|
  u.name = "たけし"
end