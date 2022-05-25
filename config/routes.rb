Rails.application.routes.draw do
  get '/apartments', to: "apartments#index"
  post '/apartments', to: "apartments#create"
  patch 'apartments/:id', to: "apartments#update"
  delete '/apartments/:id', to: "apartments#destroy"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
