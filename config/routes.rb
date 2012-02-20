StoryShare::Application.routes.draw do
  root :to => 'welcome#index'

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" } do
    delete '/users/disconnect/:provider',
      :to => 'users#disconnect_omniauth_provider',
      :as => 'disconnect_omniauth_provider'
  end

  resources :stories, only: [ :index, :show, :new, :create ] do
    resources :comments, only: [ :create ]
  end

  resources :assignments, only: [ :index, :show, :new, :create ]
end
