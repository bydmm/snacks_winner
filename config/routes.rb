Rails.application.routes.draw do
  root to: 'snacks#index'

  resource :snacks
end
