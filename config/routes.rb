Rails.application.routes.draw do

  resources :concepts, :students, :teachers, :pages
  resources :student_sessions, :teacher_sessions
  resources :lessons, :except => [:show]
  resources :teachers, :students, :only => [:new, :create]
  resources :student_sessions, :only => [:new, :create, :destroy]
  resources :teacher_sessions, :only => [:new, :create, :destroy]
  
  post '/concepts/vote/:id', to: 'concepts#vote'

  get '/lessons/:date', to: 'lessons#show'

  resources :sessions, :only => [:new, :create, :destroy]
  
  root to: "pages#index"

  get 'teacher_sessions/new'

  get 'teacher_sessions/create'

  get 'teacher_sessions/destroy'

  get 'student_sessions/new'

  get 'student_sessions/create'

  get 'student_sessions/destroy'

  get 'students/view', to: 'students#view'


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
