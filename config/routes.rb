Rails.application.routes.draw do
  devise_for :users
  resources :courses
  resources :users, only: %i[index edit show update]
  get 'home/activity'
  get 'privacy_policy', to: 'static_pages#privacy_policy'
  # get  'static_pages#landing_page'
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
