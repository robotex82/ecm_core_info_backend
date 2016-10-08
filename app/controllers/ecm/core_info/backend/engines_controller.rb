module Ecm::CoreInfo::Backend
  class EnginesController < Itsf::Backend::Resource::BaseController
    def self.resource_class
      Ecm::CoreInfo::RailsEngine
    end

    private

    def collection_scope
      if features?(:kaminari)
        Kaminari.paginate_array(resource_class.all).page(params[:page])
      else
        resource_class.all
      end
    end

    def load_collection
      collection_scope
    end

    def to_param_method
      :class
    end

    def disabled_features
      [:ransack]
    end
  end
end
