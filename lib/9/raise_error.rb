# 意図的に例外を発生させることも可能

def currency_of(country)
  case country
  when :japan
    "yen"
  else
    # エラーのクラスを指定することも可能
    raise ArgumentError, "無効な国名です。#{country}"
  end
end