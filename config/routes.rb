Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  #read
  get "tasks", to: "tasks#index"
  get "tasks/:id", to: "tasks#show", as: :task

  #create
  get "task/new", to: "tasks#new"
  post "tasks", to: "tasks#create"

  #update
  get "tasks/:id/edit", to: "tasks#edit", as: :edit
  patch "tasks/:id", to: "tasks#update"

  #delete
  delete "tasks/:id", to: "tasks#destroy"
end
