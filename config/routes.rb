Rails.application.routes.draw do

  get "weeks" => "weeks#index"
  get "weeks/new" => "weeks#new", as: :new_week
  get "weeks/:id" => "weeks#show", as: :week
  post "weeks" => "weeks#create"


  get "weeks/:id/newevent" => "events#new", as: :new_week_event
  get "weeks/:id/events/:id" => "events#show", as: :weeks_event
  post "weeks/:id/events" => "events#create", as: :week_events

  get "weeks/:id/events/:id/edit" => "events#edit", as: :edit_week_event_path
  post "weeks/:id/events" => "events#update"

  get "weeks/:id/newresource" => "resources#new", as: :new_week_resource
  post "weeks/:id/resources" => "resources#create", as: :week_resources

  get "weeks/:id/edit" => "weeks#edit", as: :edit_week
  patch "weeks/:id" => "weeks#update"
  delete "weeks/:id" => "weeks#destroy"

  #  post "movies/:id/reviews" => "reviews#create", as: :movie_reviews

  get "events" => "events#index"
  get "events/new" => "events#new", as: :new_event
  get "events/:id" => "events#show", as: :event
  post "events" => "events#create"
  get "weeks/:id/events/:id/edit" => "events#edit", as: :edit_event
  patch "events/:id" => "events#update"
  delete "weeks/:id/events/:id" => "events#destroy"

   get "resources" => "resources#index"
  get "resources/new" => "resources#new", as: :new_resource
  get "resources/:id" => "resources#show", as: :resource
  post "resources" => "resources#create"
  get "weeks/:id/resources/:id/edit" => "resources#edit", as: :edit_resource
  patch "resources/:id" => "resources#update"
  delete "resources/:id" => "resources#destroy"

  get '/signup' => 'users#new', as: :new_user
  get "users" => "users#index"
  get "users/:id" => "users#show"
  post "users" => "users#create"

  get '/login' => 'sessions#new'
  # root 'sessions#new'
  post 'login'    => 'sessions#create'
  delete 'logout' => 'sessions#destroy'


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
