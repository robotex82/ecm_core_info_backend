module Ecm
  module CoreInfo
    module Backend
      class Engine < ::Rails::Engine
        isolate_namespace Ecm::CoreInfo::Backend
      end
    end
  end
end
