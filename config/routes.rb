Rails.application.routes.draw do
 
  devise_for :users, :path => '', :path_names => {:sign_in => 'login', :sign_out => 'logout'}
 

  resources :products do
    resources :comments
  end
  
  resources :users

  
  get 'static_pages/contact'

  get 'static_pages/index'

  get 'static_pages/about'

  get 'static_pages/landing_page'

  post "static_pages/thank_you"

  resources :orders, only: [:index, :show, :create, :destroy]

 

  root 'static_pages#landing_page'




 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'
end

