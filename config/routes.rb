Rails.application.routes.draw do
  # articles#show
  # articles#translate

  namespace :api do
    namespace :v1 do
      resources :articles
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
