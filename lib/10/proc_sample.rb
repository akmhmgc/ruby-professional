# def _deprecated_scope_block(name)
#   lambda do |record|
#     klass.current_scope = _deprecated_spawn(name)
#     yield record if block_given?
#   end
# end

def hello(&block)
  lambda do |record|
    yield record if block_given?
  end
end

def _deprecated_scope_block(name, &block)
    -> record do
      klass.current_scope = _deprecated_spawn(name)
      yield record if block_given?
    end
end


def test(&block)
    name = block if block_given?
    p name
end


test do 
    "うに"
end
