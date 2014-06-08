Rails.application.routes.draw do

  resources :users, only: [:index]


  devise_for :users
   #get "/sign-out" => "devise/sessions#destroy"
  #end

  root "users#index"

end
