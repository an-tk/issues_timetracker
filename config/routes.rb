IssuesTimetracker::Application.routes.draw do
  devise_for :users

  resources :projects

  root :to => 'welcome#index'
end
