module Inclusion
  def inclusion_instance_method
    puts 'Inclusion instance_method'
  end

  def self.inclusion_class_method
    puts 'Inclusion class_method'
  end
end

module Extension
  def extension_instance_method
    puts 'Extension instance_method'
  end

  def self.extension_class_method
    puts 'Extension class_method'
  end
end

class Main
  include Inclusion 
  extend Extension
end
