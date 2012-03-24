Game::Application.routes.draw do
  resources :rounds

  match '*path' => 'main#index' 
  root :to => 'main#index'
end
