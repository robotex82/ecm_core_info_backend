require 'active_support/core_ext/module/delegation'
require 'active_support/core_ext/module/attribute_accessors'

module Ecm
  module CoreInfo
    module Backend
      module Configuration
        def configure
          yield self
        end

        mattr_accessor :registered_controllers do
          lambda do
            [
              Ecm::CoreInfo::Backend::EnginesController ,
              Ecm::CoreInfo::Backend::GemsController 
            ]
          end
        end

        mattr_accessor :registered_services do
          lambda do
            []
          end
        end
      end
    end
  end
end
