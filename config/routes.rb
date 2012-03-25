Game::Application.routes.draw do
  resources :rounds
  resources :authentications

  # OmniAuth session handling.
  match '/auth/:provider/callback' => 'authentications#create'
  match '/logout' => 'authentications#logout'

  match '*path' => 'main#index'
  root :to => 'main#index'
end
