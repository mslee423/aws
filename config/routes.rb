Rails.application.routes.draw do
  root 'posts#index'
  resources :posts do
    resources :reviews
  end
end
