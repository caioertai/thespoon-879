Rails.application.routes.draw do
  #                    controller_name#action_name
  # REST
  # C
  get  "/restaurants/new", to: "restaurants#new",    as: :new_restaurant
  post "/restaurants",     to: "restaurants#create"

  # R
  get  "/restaurants",     to: "restaurants#index"
  get  "/restaurants/:id", to: "restaurants#show",  as: :restaurant

  # U
  get   "/restaurants/:id/edit", to: "restaurants#edit", as: :edit_restaurant
  patch "/restaurants/:id",      to: "restaurants#update"

  # D
  delete "/restaurants/:id", to: "restaurants#destroy"
end
