Rails.application.routes.draw do
  resource :oauth, controller: :oauth, only: [] do
    get 'twitcas_auth'
    get 'twitcas_callback'
  end

  resource :top, controller: :top, only: [] do
    get 'page'
  end

  resource :streaming, controller: :streaming, only: [] do
    get 'play'
    post 'hook'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
