require './my_module'

class Main
  include MyModule
end

# モジュールのインスタンスメソッドをインスタンスメソッドに追加する
puts Main.new.instance_method

class Main2
  extend MyModule
end

# モジュールのインスタンスメソッドを特異メソッドに追加する
puts Main2.instance_method
