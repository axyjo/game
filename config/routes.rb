Game::Application.routes.draw do
  resources :rounds

  # OmniAuth session handling.
  match '/auth/:provider/callback' => 'sessions#create'
  match '/logout' => 'sessions#destroy'

  match '*path' => 'main#index'
  root :to => 'main#index'
end
