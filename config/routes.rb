Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"
  resources :home
  resources :questions
  resources :users do 
    collection do 
      get :user_following
      get :topic_following
	end
  end	

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
