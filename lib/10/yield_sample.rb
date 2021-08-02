def greeting
  p "おはよう"
#    ブロックの引数に渡す
  test = yield "ういす"
  p test
  p "こんばんわ"
end

greeting do |test|
    test * 10
end


