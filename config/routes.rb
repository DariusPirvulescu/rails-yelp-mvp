Rails.application.routes.draw do
  root :to => "pages#home"
  resources :restaurants, only: [:index, :show, :new, :create] do
    resources :reviews, only: [:new, :create]
  end
end
