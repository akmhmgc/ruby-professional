# p (1..10).include?(4)

# # 以上以下の範囲であればrangeを使うと楽
# age = 7

# case age
# when 1..10
#   p "you are too young"
# when 10..20
#   p "you are soso"
# end

# # 畳み込み
# p [1, 2, 3, 4, 5].inject(0) { |result, n| result + n * 2 }

# # 要素を探す
# p "要素が存在した" if [1, 2, 3, 4, 5].find { |n| n % 12 == 0 }
