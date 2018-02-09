Rails.application.routes.draw do

  resources :topics

  resources :posts

  resources :questions

  resources :advertisements


  get 'about' => 'welcome#about'

  # get 'welcome/contact'
  #
  # get 'welcome/faq'

  get 'welcome/posts'

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
