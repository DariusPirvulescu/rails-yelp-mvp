Rails.application.routes.draw do
  root :to => "pages#home"
  resources :restaurants, only: [:index, :show, :new, :create] do
    resources :reviews, shallow: true
  end
end
