Rails.application.routes.draw do
  resources :homes do
    collection do
      post :confirm
    end
  end
end
