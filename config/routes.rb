Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  mount Ckeditor::Engine => '/ckeditor'
  root to: "home#index"
  get '/about', to: 'home#about'
  resources :article_categories
  resources :articles
  resources :project_categories
  resources :projects
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
