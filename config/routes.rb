Rails.application.routes.draw do
  
  get 'favorites/new'
  get 'sessions/new'

  get 'welcome/index'
    resources :favorites, only: [:create, :destroy]
    resources :sessions, only: [:new, :create, :destroy]
    resources :users
    resources :articles do
    resources :comments do
    collection do
      post :confirm
    end
    end
  end
  
  root 'welcome#index'

end
