Game::Application.routes.draw do
  resources :rounds

  root :to => 'main#index'
end
