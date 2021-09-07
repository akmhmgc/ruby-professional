module M
  def foo
    p "foo"
  end
  alias bar foo
  #   fooをモジュール関数として定義（インスタンスではprivateメソッド）
  module_function :foo
end

class C
  # 通常モジュールはincludeして使用される
  include M

  #   プライベートメソッドの呼び出し
  def hello
    foo
  end
end

# 特異メソッドとして呼び出し
M.foo

# インスタンメソッドとして呼び出し
c = C.new
c.bar
c.hello
# c.foo fooはprivateメソッドなので呼び出せない
