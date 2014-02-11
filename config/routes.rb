CakeFundraising::Application.routes.draw do

  devise_for :sponsors
  devise_for :fundraisers
  get "stats/index"
  root :to => "home#index"

  match "confirmation", to: "confirmation#index", via: [:get]
  match "stats", to: "stats#index", via: [:get]

  namespace :fundraisers do
    resources :campaigns
  end

  namespace :sponsor do
    resources :pledges

    resources :campaigns do
      resources :pledges
    end
  end
end
