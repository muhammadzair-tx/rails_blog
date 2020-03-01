Rails.application.routes.draw do
  resources :categories
  Rails.application.routes.default_url_options[:host] = 'https://rails-zair-blog.herokuapp.com'
  # devise_for :users do
  #   member do
  #     get :confirm_email
  #   end
  # end
  # This will render the show.html.erb page when 'users/username' is typed in the browser
  # Now your users can be seen at /users/username
  # devise_for :users, :path_prefix => 'd'
  # resources :users, :only =>[:show]
#----------------------------users
  get '/users', to: 'admin#index'
  get '/user/:id', to: 'admin#show', :as => 'user_profile'
  get '/admin', to: 'admin#admin_dashboard', :as => 'dash'
  resources :users,only: [:index] do
    member do
      resources :followings,only: [:create, :destroy]
    end
  end
  #resources :relationships,       only: [:create, :destroy]


  devise_for :users
  #, controllers: { confirmations: 'confirmations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  # here posts is controller and index is a function
  # now go to posts controller and make index function
  # then it gives a error for nothing to return not test or view 
  # create a view by the help of haml or erb 
  # haml is just a shorthand notation "index.html.haml"
  resources :posts do
    resources :comments #nested thing
    resources :likes
  end

  resources :tags , except: [:show]
  # get 'tags', to: 'tags#index'
  # get 'tags/:id/edit/', to: 'tags#edit', as: 'tag_edit'
  # get 'tags/new'
  # get 'tags/:id/delete', to: 'tags#delete'
  # this will create a crud function for post
  # you can check "rails routes" after or before it
  # add this line to link tags to posts with the respective tag
  #
  get '/search' => 'pages#search', :as => 'search_page'
  # get '/search', to: 'pages#search'
  get 'tags/:tag', to: 'posts#index', as: :thistag
  root "posts#index"


end
