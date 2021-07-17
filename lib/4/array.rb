list = [1, 2, 3, 4, 5, 6, 7]

# 奇数だけ削除したい場合、以下ではなく
list.each do |n|
  list.delete(n) if n.odd?
end
p list

list = [1, 2, 3, 4, 5, 6, 7]
# こちらの方が便利
list.delete_if do |n|
  n.odd?
end
p list

# 配列だけではなくハッシュでも利用可能 とりあえずeachで処理していたかも
dict = { one: 1, two: 2, three: 3 }
dict.delete_if do |_k, v|
  v.odd?
end

p dict
