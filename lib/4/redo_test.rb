def redo_test
  veges = %w[ピーマン とまと 人参]
  answers = %w[すき きらい]

  veges.each do |veg|
    counter = 0
    answer = answers.sample
    p "#{veg}は#{answer}"
    counter += 1
    redo if answer == "きらい" && counter < 5
  end
end
