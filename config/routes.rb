Ecm::CoreInfo::Backend::Engine.routes.draw do
  resources :engines
  resources :gems

  root to: 'home#index'
end
