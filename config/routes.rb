Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "tasks#index"
  get "tasks", to: "tasks#index"
  get "new", to: "tasks#new"
  get "task/:id", to: "tasks#show", as: :task
  post "tasks", to: "tasks#create"
  get "task/:id/edit", to: "tasks#edit", as: "edit_task"
  patch "task/:id", to: "tasks#update"
  delete "task/:id", to: "tasks#destroy"
end
