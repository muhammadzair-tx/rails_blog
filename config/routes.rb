Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  # here posts is controller and index is a function
  # now go to posts controller and make index function
  # then it gives a error for nothing to return not test or view 
  # create a view by the help of haml or erb 
  # haml is just a shorthand notation "index.html.haml"
  root "posts#index"
  
  # this will create a crud function for post
  # you can check "rails routes" after or before it 
  resources :posts
end
