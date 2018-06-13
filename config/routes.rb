Rails.application.routes.draw do
<<<<<<< HEAD
  
=======
>>>>>>> 297e12387328d626196bf50becc9f2a32b0690ed
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
