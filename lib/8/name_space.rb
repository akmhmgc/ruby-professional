module BaseBall
  class Second
    def initialize(name)
      @name = name
      p "hello, #{@name}"
    end
  end
end

user = BaseBall::Second.new("俺ちゃん")
