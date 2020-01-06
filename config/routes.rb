Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register'}
  

  resources :todos do
  	collection do
  	  get :delete_all
  	end
  end

  get 'pages/index'

  get 'pages/all_todos'

  root "pages#index"
end
