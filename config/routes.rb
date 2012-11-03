IssuesTimetracker::Application.routes.draw do

  devise_for :users

  resources :projects
  resources :issues do
    match 'track/start' => 'time_trackers#start'
    match 'track/stop' => 'time_trackers#stop'
    match 'track/pause' => 'time_trackers#pause'
    match 'track/resume' => 'time_trackers#resume'
  end

  root :to => 'welcome#index'
end
