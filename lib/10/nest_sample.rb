def calc_sample(a)
  # アーリーリターンで　ネストを浅くする
  return unless a > 1

  if a % 5 == 0
    puts "5で割り切れるよ"
  else
    puts "5で割り切れないよ"
  end
end

calc_sample(19)
