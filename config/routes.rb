Rails.application.routes.draw do
  # devise_for :users do
  #   member do
  #     get :confirm_email
  #   end
  # end
  devise_for :users, controllers: { confirmations: 'confirmations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  # here posts is controller and index is a function
  # now go to posts controller and make index function
  # then it gives a error for nothing to return not test or view 
  # create a view by the help of haml or erb 
  # haml is just a shorthand notation "index.html.haml"
  resources :posts do
    resources :comments #nested thing
  end
  
  root "posts#index"
  
  # this will create a crud function for post
  # you can check "rails routes" after or before it 
  
end
