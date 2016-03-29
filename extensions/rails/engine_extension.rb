require 'rails/engine'

class Rails::Engine
  def read_attribute_for_serialization(attr_name)
    send(attr_name)
  end
end
