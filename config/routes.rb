Rails.application.routes.draw do
  devise_for :users
  resources :usuarios
  resources :places 
  resources :expertises
  resources :mentors
  resources :socialnetworks
  resources :abilitys
end
