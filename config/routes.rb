Rails.application.routes.draw do
  root :to => "pages#home"
  resources :restaurants, only: [:index, :show, :new, :create] do
    resources :reviews, except: [:index, :show, :destroy], shallow: true
  end

  get '/backdoor', to: 'pages#backdoor', as: 'backdoor_testing'
end
