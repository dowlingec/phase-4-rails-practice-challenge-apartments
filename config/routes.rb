Rails.application.routes.draw do
  get '/apartments', to: "apartments#index"
  post '/apartments', to: "apartments#create"
  patch 'apartments/:id', to: "apartments#update"
  delete '/apartments/:id', to: "apartments#destroy"

  get '/tenants', to: "tenants#index"
  post '/tenants', to: "tenants#create"
  patch 'tenants/:id', to: "tenants#update"
  delete '/tenants/:id', to: "tenants#destroy"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
