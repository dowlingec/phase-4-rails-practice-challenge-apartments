Rails.application.routes.draw do

  resources :apartments
  # get '/apartments', to: "apartments#index"
  # post '/apartments', to: "apartments#create"
  # patch 'apartments/:id', to: "apartments#update"
  # delete '/apartments/:id', to: "apartments#destroy"
  resources :tenants
  # get '/tenants', to: "tenants#index"
  # post '/tenants', to: "tenants#create"
  # patch 'tenants/:id', to: "tenants#update"
  # delete '/tenants/:id', to: "tenants#destroy"

  #DELTE index once func checked
  # get '/leases', to: "leases#index"
  resources :leases, only: [:create, :destroy]
  # post '/leases', to: "leases#create"
  # delete '/leases/:id', to: "leases#destroy"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
