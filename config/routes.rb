Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cocktails, only: [:create, :new, :show, :index] do
    resources :doses, only: [:create, :new]
  end
  root to: 'cocktails#index'
end
