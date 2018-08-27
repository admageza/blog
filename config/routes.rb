Rails.application.routes.draw do
  
  resources :contacts
  resources :feeds
  get 'favorites/new'
  get 'sessions/new'

  get 'welcome/index'
    resources :articles do
    resources :feeds
    end
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
  
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
  
  root 'welcome#index'

end
