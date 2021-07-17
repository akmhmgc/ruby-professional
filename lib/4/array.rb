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

def mutable
  # 配列のデフォルト作成
  # Integerクラスはいミュータブル（変更可能でない）で
  array = Array.new(10, 2)

  # この時新しい数値が代入されるので参照するオブジェクトidは異なる
  array[0] = 100
  p array[0].object_id

  st_array = Array.new(5, "small")
  # Stringはミュータブル（変更可能）であるため、破壊的メソッドにより変更されると配列の他の値も異なる
  st_array[0].upcase!
  p st_array

  # これだと変更されない
  st_array2 = Array.new(5, "small")
  st_array2[0] = st_array2[0].upcase
  p st_array2
end
