a = "hello"
b = a

# 変数にはオブジェクトの参照が格納されているのでidは同じ
p a.equal?(b)

a.upcase!
p b #HELLO

