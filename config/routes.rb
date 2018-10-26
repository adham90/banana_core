Rails.application.routes.draw do
  post 'user_token' => 'user_token#create'
  resources :rides
  resources :bikes
  resources :users do
    collection do
      get 'current'
    end
  end
end
