module Greeting
  def hello
    p "こんちゃす"
  end
end

class User
  extend Greeting

  # extendだと特異メソッドなのでクラス作成時に呼び出し可能
  hello
end
