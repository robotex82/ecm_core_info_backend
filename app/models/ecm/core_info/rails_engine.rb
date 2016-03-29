module Ecm::CoreInfo
  class RailsEngine
    include ActiveModel::Model

    def self.attribute_names
      %w(class app config env_config helpers routes initializers)
    end

    def self.all
      ::Rails::Engine.subclasses.map(&:instance).sort_by {|obj| obj.class.name }
    end

    def self.count
      all.count
    end

    def self.find(id)
      all.find { |i| i.class.to_s == id }
    end

    def self.first
      all.first
    end

    def self.last
      all.last
    end
  end
end