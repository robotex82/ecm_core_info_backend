module Ecm::CoreInfo::Backend
  class GemsController < Itsf::Backend::Resource::BaseController
    using Ecm::CoreInfo

    def self.resource_class
      Ecm::CoreInfo::Gem
    end

    private

    def disabled_features
      [:ransack]
    end

    def to_param_method
      :name
    end

    def collection_scope
      if features?(:kaminari)
        Kaminari.paginate_array(resource_class.find_all.to_a).page(params[:page])
      else
        resource_class.find_all.to_a
      end
    end

    def load_resource
      resource_class.find_by_name(params[:id])
    end

    def load_collection
      collection_scope
    end
  end
end
