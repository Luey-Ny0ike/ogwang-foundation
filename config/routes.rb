Rails.application.routes.draw do
  resources :news
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, controllers: { registrations: 'users/registrations' }
  mount Ckeditor::Engine => '/ckeditor'
  root to: "home#index"
  get '/about', to: 'home#about'
  resources :article_categories
  resources :articles
  resources :project_categories
  resources :projects
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
