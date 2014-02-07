CakeFundraising::Application.routes.draw do
  get "stats/index"
  root :to => "home#index"

  match "confirmation", to: "confirmation#index", via: [:get]
  match "stats", to: "stats#index", via: [:get]
end
