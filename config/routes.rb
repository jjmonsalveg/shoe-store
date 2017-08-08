require 'api_constraints'
Rails.application.routes.draw do

  root 'shoes#index' # shortcut for the above

  resources :shoes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  ## API REST
  namespace :api, defaults: { format: :json } do
    scope module: :v1,
          constraints: ApiConstraints.new(version: 1, default: true) do
      resources :shoes
    end
  end
end
