ApplicationPortal::Application.routes.draw do

  get "log_in" => "sessions#new", :as => "log_in"
  get "log_out" => "sessions#destroy", :as => "log_out"
  get "sign_up" => "users#new", :as => "sign_up"

  get "menu" => "sessions#menu", :as => "menu"

  put ':controller(/:action(/:id))(.:format)'
  
  get 'reports/generate'

  get 'reports/display'

  get 'reports/trial'
  get 'samples/opd'
  post 'samples/opd'
  resources :samples
  resources :users
  resources :sessions

  resources :reports

  resources :locations

  root :to => 'services#index'

  resources :services

  match ':controller(/:action(/:id))(.:format)'

  get 'more_services' => 'services#more_services', :as => 'more_services'
end
