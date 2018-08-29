Rails.application.routes.draw do
  resources :article_categories
  resources :articles
  resources :project_categories
  resources :projects
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
