Rails.application.routes.draw do

  # get 'recipe_comments/index'
  #
  # get 'recipes/index'

  devise_for :users

  root to: "welcome#index"
  
  resources :posts do
    resources :comments
  end
    resources :recipes do
      resources :recipe_comments
    end

end
