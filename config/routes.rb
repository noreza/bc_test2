Rails.application.routes.draw do
  devise_for :users
  resources :articles
  root 'articles#index'
  get '/articles/:id', to: 'show#article'
  get '/articles/:id/edit', to: 'edit#article'
  get '/articles/:id/destroy', to: 'destroy#article'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
