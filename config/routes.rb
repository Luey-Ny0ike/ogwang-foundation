Rails.application.routes.draw do
  resources :news
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, controllers: { registrations: 'users/registrations', sessions: 'users/sessions' }
  mount Ckeditor::Engine => '/ckeditor'
  root to: "home#index"
  get '/about', to: 'home#about'
  resources :article_categories
  resources :articles
  resources :project_categories
  resources :projects
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # User dashboard routes
  get 'users', to: "users#index", as: "users"
  get 'users/:id', to: "users#show", as: "user"
  get 'users/:id/edit', to: "users#edit", as: "edit_user"
  patch 'users/:id', to: "users#update"
  get 'users/:id/approve', to:"users#approve", as:"approve"
  get 'users/:id/disapprove', to:"users#disapprove", as:"disapprove"
end
