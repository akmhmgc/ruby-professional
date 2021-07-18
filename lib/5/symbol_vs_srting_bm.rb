# require 'benchmark'

# 文字列をキーとする
# {"age": 23}はシンボルがキーとなっている
# str_hash = { "age" => 23, "gender" => "female", "name" => "Yoko" }
# sym_hash = { age: 23, gender: "female", name: "Yoko" }
# num_iteration = 10000000

# Benchmark.bm 10 do |r|
#   r.report "Symbole" do
#     num_iteration.times do
#       sym_hash[:age]
#     end
#   end
#   r.report "String" do
#     num_iteration.times do
#       str_hash["age"]
#     end
#   end
# end
