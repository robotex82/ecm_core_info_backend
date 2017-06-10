if Rails.application.config.cache_classes
  require_dependency Ecm::CoreInfo::Backend::Engine.root.join *%w(extensions bundler remote_specification_extension)
  require_dependency Ecm::CoreInfo::Backend::Engine.root.join *%w(extensions rails engine_extension)
else
  Rails.application.config.to_prepare do
    require_dependency Ecm::CoreInfo::Backend::Engine.root.join *%w(extensions bundler remote_specification_extension)
    require_dependency Ecm::CoreInfo::Backend::Engine.root.join *%w(extensions rails engine_extension)
  end
end
