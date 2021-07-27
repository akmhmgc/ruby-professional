# 破壊的な変更は防げるが、代入は防げない
CONST = "aaaaa".freeze

# UNKO.upcase! => `upcase!': can't modify frozen String (FrozenError)

CONST = "bbb"
