Rails.application.routes.draw do
  get 'welcome/index'
  
  resources :articles do
    resources :comments do
    collection do
      post :confirm
    end
    end
  end
  
  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
