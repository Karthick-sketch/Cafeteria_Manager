Rails.application.routes.draw do
  get "/", to: "home#index"

  get "/menu_categories", to: "menu_categories#index"
  post "/menu_categories", to: "menu_categories#create", as: :create_menu_category
  put "/menu_categories/:id", to: "menu_categories#update"

  get "/new_menu_item", to: "menu_items#new", as: :new_menu_item
  get "/create_menu_item", to: "menu_items#create", as: :create_menu_item
  put "/menu_items/:id", to: "menu_items#update"
  delete "/menu_items/:id", to: "menu_items#destroy"

  get "/orders", to: "orders#index"
  post "/orders/:total_amount", to: "orders#create"
  put "/orders/:id", to: "orders#update"

  get "/order_items", to: "order_items#index"
  get "/create_order_item", to: "order_items#create", as: :create_order_item

  post "/cart_items", to: "cart_items#create"
  delete "/clear_cart_items", to: "cart_items#destroy_all", as: :clear_cart
  put "/cart_items", to: "cart_items#update", as: :change_quantity

  resources :users

  get "/signin", to: "sessions#new", as: :new_sessions
  post "/signin", to: "sessions#create", as: :sessions
  delete "/signout", to: "sessions#destroy", as: :destroy_session
end
