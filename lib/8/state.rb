# 状態を保存するためにモジュールを使用する
module State
  class << self
    attr_accessor :url, :debug_mode
    # classメソッド内でattr_accessor :url, :debug_modeを規程すると,
    # クラスメソッドとしてインスタンス変数にアクセス可能
  end
end


# 状態を保持することができる
State.url = "http://test.com"
State.debug_mode = true
