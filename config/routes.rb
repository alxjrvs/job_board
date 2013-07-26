JobBoard::Application.routes.draw do
  devise_for :students

  devise_for :users
  resources :jobs
  match "/home", to: "static_pages#home"
  match "/categories", to: "static_pages#categories"
  match "/about", to: "static_pages#about"
  match "/childcare", to: "jobs#index", :category => "Child Care"
  match "/computer", to: "jobs#index", :category => "Computer Help"
  match "/general", to: "jobs#index", :category => "General"
  match "/home-services", to: "jobs#index", :category => "Home Services"
  match "/moving", to: "jobs#index", :category => "Moving"
  match "party-help-catering", to: "jobs#index", :category => "Party Help/Catering"
  match "/research-focus-group", to: "jobs#index", :category => "Research/ FocusGroup"
  match "/yardwork", to: "jobs#index", :category => "Yardwork"






  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match "products/:id" => "catalog#view"
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match "products/:id/purchase" => "catalog#purchase", :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get "short"
  #       post "toggle"
  #     end
  #
  #     collection do
  #       get "sold"
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
  #       get "recent", :on => :collection
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
   root :to => "static_pages#landing"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that"s not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ":controller(/:action(/:id))(.:format)"
end
