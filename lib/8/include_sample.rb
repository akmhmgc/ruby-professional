module Greeting
  def hello
    "hello"
  end
end

class User
  include Greeting
end

user = User.new

p User.included_modules

# pryにおいてselfはObjectクラスのインスタンスである
