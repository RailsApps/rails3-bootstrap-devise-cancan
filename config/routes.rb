Rails3BootstrapDeviseCancan::Application.routes.draw do
  get "error/index"

  match 'cause_server_side_exception' => 'home#cause_server_side_exception'
  match 'cause_another_exception' => 'home#cause_another_exception'
  match 'cause_critical' => 'home#cause_critical'

  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users
end
