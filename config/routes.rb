Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :propositions do #index #show #new/create #edit/update #delete
    resources :domains, only: [:index, :read, :update]
  end

  resources :propositions do #index #show #new/create #edit/update #delete
    resources :keywords, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  end

end
