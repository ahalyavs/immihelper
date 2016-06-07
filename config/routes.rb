Rails.application.routes.draw do

  # Routes for the Stay resource:
  # CREATE
  get "/stays/new", :controller => "stays", :action => "new"
  post "/create_stay", :controller => "stays", :action => "create"

  # READ
  get "/stays", :controller => "stays", :action => "index"
  get "/print/:user_id", :controller => "stays", :action => "print"
  get "/stays/:id", :controller => "stays", :action => "show"

  # UPDATE
  get "/stays/:id/edit", :controller => "stays", :action => "edit"
  post "/update_stay/:id", :controller => "stays", :action => "update"

  # DELETE
  get "/delete_stay/:id", :controller => "stays", :action => "destroy"
  #------------------------------

  #Welcome page
  get "/welcome", :controller => "landing", :action => "welcome"

  #users
  devise_for :users
  root 'stays#index'

  # devise_scope :user do get "users/sign_in" => "devise/sessions#new"
  # end

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
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

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
