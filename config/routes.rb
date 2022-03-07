Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  #prepend routes with api // get localhost:3001/api/artists
  namespace :api do
  
    get    'authors',         to: "authors#index"
    get    'authors/:id',     to: "authors#show"
    post   'authors',        to: "authors#create"
    put    'authors/:id',     to: "authors#update"
    delete 'authors/:id',  to: "authors#destroy"

  end

end


#get
#post => creates
#delete
#put
#