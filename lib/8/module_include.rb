# 親クラスがモジュールを取り込んでいる場合、継承したクラス内でモジュールを使用可能？
module Greeting
  def hello
    "hello"
  end
end

class User
  include Greeting
end

class Child < User
end

child = Child.new

# ChildはUserの子クラスであって、インスタンスではない
p Child.is_a?(User)
p Child.superclass
p Class.superclass
p Class.is_a?(Object)

# classメソッドは自身が属するクラスを返す
p child.class

