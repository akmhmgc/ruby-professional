def loop_test
  array = %w[orange apple banana]
  numbers = [1, 2, 3]
  array.each do |fruit|
    numbers.shuffle.each do |n|
      p "#{n}:#{fruit}"
      #   breakで抜けるのは一番内側の繰り返し処理
      break if n == 2
    end
  end
end

# loop_test
# =>
# "3:orange"
# "2:orange"
# "1:apple"
# "2:apple"
# "3:banana"
# "2:banana"
