class User
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def hello
    # インスタンスメソッド内でのselfはインスタンス自体を指す
    p greeting
  end

  private

  def greeting
    "こんにちは"
  end
end

# privateメソッドはサーバーを指定することができない => self.メソッド名で呼び出すこともできない

user = User.new("akimu")
user.hello
