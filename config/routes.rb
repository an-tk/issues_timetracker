IssuesTimetracker::Application.routes.draw do
  resources :issues

  devise_for :users

  resources :projects

  root :to => 'welcome#index'
end
