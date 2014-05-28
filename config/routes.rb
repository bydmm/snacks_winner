Rails.application.routes.draw do
  root to: 'home#index'

  resources :comments
  resources :snacks
  resources :wishes
  resources :users
  resources :sessions do
    collection do
      delete :sign_out
    end
  end
  resources :likes
end
