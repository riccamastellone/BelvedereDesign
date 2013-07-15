Belvederedesign::Application.routes.draw do


  namespace :admin do
    root to: "admin#index"
  end

  root to: "main#home"


  namespace :admin do
    resources :news
    resources :designer
    resources :products
  end
  resources :news_events, only: [:index, :show]
  resources :designers, only: [:index]
  resources :product,  only: [:index, :show]

  get '/admin/products/:id/editimages', to: 'admin::products#editimages'
  post '/admin/products/:id/addimg', to: 'admin::products#addimg'
  delete '/admin/products/ajaximg/:id', to: 'admin::products#deleteimg'
  get '/designers/ajax/:id', to: 'designers#showajax'
  get '/product/ajax/category/:id', to: 'product#listajax'
  get '/showroom/ajax/', to: 'showroom#listajax'
  get '/showroom/detail/ajax/:id', to: 'showroom#ajaxdetail'

  match 'get-inspired' => 'main#getinspired', :via => :get
  match 'top-products' => 'product#top', :via => :get
  match 'showroom' => 'showroom#index', :via => :get
  match 'main' => 'main#home', :via => :get
  match 'l-azienda' => 'main#azienda', :via => :get
  match 'partners' => 'main#partners', :via => :get
  match 'contatti' => 'main#contatti', :via => :get
  match 'servizi' => 'main#servizi', :via => :get
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
  # just remember to delete public/home.html.
  # root :to => 'welcome#home'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
