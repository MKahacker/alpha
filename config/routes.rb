Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :servings
  root "servings#index"
  get "/foods/new", to: "foods#new"
  post "/foods", to: "foods#create"
  #TODO :- Work on update
  # put "/foods/:id", to: "foods#update"
  # patch "/foods/:id", to: "foods#update"
end
