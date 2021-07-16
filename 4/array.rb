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
