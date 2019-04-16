Rails.application.routes.draw do
  resources :schedules, only: [:index, :show, :create, :destroy] do
    resources :appointments, only: [:index, :create, :destroy]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
