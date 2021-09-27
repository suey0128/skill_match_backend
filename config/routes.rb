Rails.application.routes.draw do
  resources :skills
  resources :recruiters
  resources :profiles
  resources :job_seekers
  resources :events
  resources :add_events
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
