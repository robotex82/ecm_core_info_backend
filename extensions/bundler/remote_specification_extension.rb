require 'bundler/remote_specification'

class Bundler::StubSpecification
  def read_attribute_for_serialization(attr_name)
    send(attr_name)
  end
end
