Rails.application.routes.draw do
get "/", to: "pages#home", as:"home"
resources :listings


end
