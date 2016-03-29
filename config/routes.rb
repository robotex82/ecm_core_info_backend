Ecm::CoreInfo::Backend::Engine.routes.draw do
  resources :engines, only: [:index, :show]
  resources :gems,    only: [:index, :show]

  root to: 'home#index'
end
