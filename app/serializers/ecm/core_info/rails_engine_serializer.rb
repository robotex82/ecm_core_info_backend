module Ecm::CoreInfo
  class RailsEngineSerializer < ActiveModel::Serializer
    attributes :class,
               :app,
               :config,
               :env_config,
               :helpers,
               :routes,
               :initializers
  end
end