module Ecm::CoreInfo::Backend
  class EnginesController < Itsf::Backend::Resource::BaseController
    def self.resource_class
      Ecm::CoreInfo::RailsEngine
    end

    private

    def collection_scope
      Kaminari.paginate_array(Ecm::CoreInfo::RailsEngine.all)
    end

    def to_param_method
      :class
    end
  end
end