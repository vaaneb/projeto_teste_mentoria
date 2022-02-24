Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do
      devise_for :users
      resources :usuarios
      resources :places 
      resources :expertises
      resources :mentors
      resources :socialnetworks
      resources :abilitys
    end
  end
end
