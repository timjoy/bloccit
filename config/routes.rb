Rails.application.routes.draw do

  # get 'sponsored_post/show'
  #
  # get 'sponsored_post/new'
  #
  # get 'sponsored_post/edit'

  resources :topics do
    resources :posts, except: [:index]
    resources :sponsored_posts, except: [:index]

  end


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
