Rails.application.routes.draw do

#read all
  get 'tasks', to: 'tasks#index'

#create (one)
  get    "tasks/new",      to: "tasks#new", as:'new_task'
  post   "tasks",          to: "tasks#create"

#read one
  get 'tasks/:id', to: 'tasks#show', as:'task'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

#update a task
  get    "tasks/:id/edit", to: "tasks#edit" , as: "edit_task"
  patch  "tasks/:id",      to: "tasks#update"

#delete one
  delete "tasks/:id",      to: "tasks#destroy"
end
