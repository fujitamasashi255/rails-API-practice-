Rails.application.routes.draw do
  namespace :api, format: 'json' do
    namespace :v1 do
      resources :articles, only: %i[index show]
      post 'authentication' => 'authentications#create', as: :authentication
    end
  end
end
