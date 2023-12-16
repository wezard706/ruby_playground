class Hoge
  def initialize(name)
    @name = name
  end

  def get_binding
    binding
  end
end

hoge = Hoge.new("yamada")
binding = hoge.get_binding
binding.eval('puts @name') # => yamada
binding.irb
