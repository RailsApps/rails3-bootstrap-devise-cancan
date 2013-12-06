Rails3BootstrapDeviseCancan::Application.routes.draw do
  authenticated :user do
     root to: "home#index", as: :authenticated_root
  end

  unauthenticated do
     root to: "home#index"
  end
  devise_for :users
  resources :users
end
