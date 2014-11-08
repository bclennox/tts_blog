Rails.application.routes.draw do
  get 'static_pages/home'
  # if the HTTP verb is a GET
  # and the path of the URL looks like 'static_pages/home'
  # then route to
  # the controller "static_pages"
  # and the action "home"

  get 'static_pages/about'
  get 'static_pages/services'

  resources :posts

#  get '/posts'        => 'posts#index'
#  get '/posts/1/new'  => 'posts#new'
#  post '/posts'       => 'posts#create'
#  get '/posts/1'      => 'posts#show'
#  get '/posts/1/edit' => 'posts#edit'
#  patch '/posts/1'    => 'posts#update'
#  put '/posts/1'      => 'posts#update'
#  delete '/posts/1'   => 'posts#destroy'




  root to: 'posts#index'

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
