Rails.application.routes.draw do
  root to: "warbands#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :warbands do 
    resources :fighters
  end
  
  
end
