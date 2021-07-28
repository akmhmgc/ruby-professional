module Greeting
  def hello
    "hello"
  end
end

class User
  # この中でputsが使えるのはどういうこと？
  # pはUser
  p "テスト"
  include Greeting
end

# p User.included_modules

# pryにおいてselfはObjectクラスのインスタンスである


# UseクラスはClassクラスのインスタンスである
p User.is_a?(Class)

# ClassクラスはKernelモジュールをincludeしている
p Class.included_modules
