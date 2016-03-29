module Ecm::CoreInfo::Backend
  class GemsController < Itsf::Backend::Resource::BaseController
    using Ecm::CoreInfo

    def self.resource_class
      Ecm::CoreInfo::Gem
    end

    private

    def to_param_method
      :name
    end

    def collection_scope
      if Itsf::Backend.features?(:kaminari)
        Kaminari.paginate_array(resource_class.find_all.to_a)
      else
        super
      end
    end

    def load_resource
      resource_class.find_by_name(params[:id])
    end
  end
end
