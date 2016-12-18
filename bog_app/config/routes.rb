Rails.application.routes.draw do
  root "creatures#index"

  get "/creatures", to: "creatures#index", as: "creatures"
  get "/creatures/new", to: "creatures#new", as: "new_creature"
  post "/creatures", to: "creatures#create"
  get "/creature/:id", to: "creatures#show", as: "creature"
  get "/creatures/:id/edit", to: "creatures#edit", as: "edit_creature"
  patch "/creature/:id", to: "creatures#update"
  delete "/creature/:id", to: "creatures#destroy"
end
