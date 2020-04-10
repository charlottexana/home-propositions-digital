Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :propositions #index #show #new/create #edit/update #delete
  resources :domains, only: [:index, :read, :update]
  resources :keywords, only: [:index, :show, :new, :create, :edit, :update, :destroy]



  root to: 'domains#index'
  get '/search' => 'keyword#search'

end
