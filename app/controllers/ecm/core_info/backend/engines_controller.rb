module Ecm::CoreInfo::Backend
  class EnginesController < Itsf::Backend::Resource::BaseController
    def self.resource_class
      Ecm::CoreInfo::RailsEngine
    end

    private

    def collection_scope
      if Itsf::Backend.features?(:kaminari)
        Kaminari.paginate_array(resource_class.all)
      else
        super
      end
    end

    def to_param_method
      :class
    end
  end
end
