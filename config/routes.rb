Rails.application.routes.draw do
  resources :usuarios
  resources :places 
  resources :expertises
  resources :mentors
  resources :socialnetworks
  resources :abilitys
end
