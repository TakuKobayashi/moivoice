Rails.application.routes.draw do
  resources :oauth do
    collection do
      get 'twitcas_auth'
      get 'twitcas_callback'
    end
  end

  resources :streaming do
    collection do
      get 'play'
      post 'hook'
    end
  end

  root to: "top#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
