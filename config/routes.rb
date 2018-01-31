Rails.application.routes.draw do
  # get 'advertisement/index'
  #
  # get 'advertisement/show'
  #
  # get 'advertisement/new'
  #
  # get 'advertisement/create'

  resources :posts, :advertisement
  # resources :advertisement
  get 'about' => 'welcome#about'

  get 'welcome/contact'

  get 'welcome/faq'

  get 'welcome/posts'

  root 'welcome#index'

  # resources :advertisement
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
