Rails3BootstrapDeviseCancan::Application.routes.draw do
  get "error/index"

  match 'cause_server_side_exception' => 'home#cause_server_side_exception'

  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users
end
