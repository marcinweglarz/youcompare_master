Youcompare::Application.routes.draw do




  get "package_of_product/index"
  get "subscription/index"
  get "advert/index"
  get "services/index"
  get "store/index"
  get "clients/new"
  get "welcome/home"
  get "session/new"

  resources :services
  resources :products
  resources :clients
  resources :sessions
  resources :store
  resources :line_items
  resources :carts
  resources :advert
  resources :subscription
  resources :package_of_product
  resources :orders


  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  root :to => "welcome", :action => "home"
  get "welcome/thank_you"
  match '/your_cart' => "carts#your_cart", :as => "your_cart"
  match '/login' => "sessions#new", :as => "login"
  match '/logout' => "sessions#destroy", :as => "logout"
  match '/store' =>"store#index", :as=>"store"
  match '/advert'=>"advert#index", :as=>"advert"
  match '/subscription'=>"subscription#index", :as=>"subscription"
  match '/package_of_product'=>"package_of_product#index", :as=>"package_of_product"


  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
