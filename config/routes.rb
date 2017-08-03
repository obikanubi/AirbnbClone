Rails.application.routes.draw do
  devise_for :users, controllers: {
      sessions: 'users/sessions'
  }
  root 'static_pages#home'
  get '/about', to: 'static_pages#about'
  get '/help', to: 'static_pages#help'
  get '/users/:id', to: 'static_pages#profile'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
