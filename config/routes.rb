Rails.application.routes.draw do
  root to: 'home#index'

  resources :users
  resources :sessions do
    collection do
      delete :sign_out
    end
  end

  resources :snacks do
    member do
      get :upload_cover
      get :s3_cover_callback
    end
  end
  resources :wishes do
    member do
      delete :buy
    end
  end
  resources :inventories
  resources :finishes do
    member do
      delete :buy
      delete :wish
    end
  end

  resources :comments
  resources :likes
end
