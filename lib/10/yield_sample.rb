def greeting(lang: nil)
  if lang == "ja"
    p "こんにちは"
  elsif lang == "en"
    p "hello"
  else
    p "?????"
  end
end

def greet_log
  lg = yield
  greeting(lang: lg)
end

greet_log do |_lang|
  "ja"
end
