# units={'m'=>1.0,'ft'=>3.28,'in'=>39.37}
# 変数はメソッドで仕切られる

# 変更が行われないものは定数として定義しておく
UNITS = { m: 1.0, ft: 3.28, in: 39.37 }.freeze
def convert_length(length, from, to)
  (length * UNITS[to] / UNITS[from]).round(2)
end

p convert_length(1, :m, :in)
