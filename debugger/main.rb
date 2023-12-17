require 'pry'
require 'byebug'

class Debugger
  def initialize(name)
    @name = name
  end

  def get_binding
    binding
  end

  def call_binding_irb
    # Rubyの標準ライブラリだけで実行可能
    binding.irb
  end

  def call_binding_pry
    # pry-byebugとpryをインストールし、pryをrequireする必要がある
    binding.pry
  end

  def call_byebug 
    # byebugをインストール&requireする必要がある
    byebug
  end

  def call_debugger
    require 'debug'
    debugger
  end
end

debugger = Debugger.new("yamada")
binding = debugger.get_binding
binding.eval('puts @name') # => yamada

puts "start debugger.call_binding_irb" 
debugger.call_binding_irb

#puts "start debugger.call_binding_pry" 
#debugger.call_binding_pry
#
#puts "start debugger.call_byebug" 
#debugger.call_byebug
#
#puts "start debugger.call_debugger" 
#debugger.call_debugger
