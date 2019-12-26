Rails.application.routes.draw do

  resources :index

  root "messages#index"
end
