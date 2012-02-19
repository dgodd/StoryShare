StoryShare::Application.routes.draw do

  match '/', :controller => :stories, :action => :index
  root :to => 'stories#index'

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" } do
    delete '/users/disconnect/:provider',
      :to => 'users#disconnect_omniauth_provider',
      :as => 'disconnect_omniauth_provider'
  end

  resources :stories, only: [ :show, :new, :create ] do
    resources :comments, only: [ :create ]
  end
end
