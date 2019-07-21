Rails.application.routes.draw do

  namespace :api do
    namespace :v1, defaults: {format: :json} do
      get 'lowerCommonAncestor'
      resources :trees
    end
  end
  
end
