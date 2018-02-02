Rails.application.routes.draw do
<<<<<<< HEAD
  # get 'advertisement/index'
  #
  # get 'advertisement/show'
  #
  # get 'advertisement/new'
  #
  # get 'advertisement/create'

  resources :posts, :advertisement
=======
  resources :advertisements

  resources :posts
>>>>>>> checkpoint-18-assignment-redo

  get 'about' => 'welcome#about'

  get 'welcome/contact'

  get 'welcome/faq'

  # get 'welcome/posts'

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
