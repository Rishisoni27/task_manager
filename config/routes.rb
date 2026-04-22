Rails.application.routes.draw do
get "/task" , to: "task#create"
get "/task1", to: "task#index"
get"/task2/:id", to: "task#update"
get "/task3/:id", to: "task#destroy"
get "/categories", to: "categories#create"
end
