Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resource :servings, except: [:destroy]
  get "/servings", to: "servings#index"
end
