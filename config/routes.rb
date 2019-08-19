Rails.application.routes.draw do
  resources :homes do
    collection do
      post :confirm
    end
  end
  root 'homes#index'
end
