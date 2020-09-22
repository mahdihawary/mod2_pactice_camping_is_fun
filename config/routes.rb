Rails.application.routes.draw do
  get 'signups/new'
  resources :activities, only: [:index, :show]
  resources :campers, only: [:index, :show, :new, :create]
  resources :signups, only: [:new]
  post '/signup', :to=>"signups#create", :as=>"signups"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
