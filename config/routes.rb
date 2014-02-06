CakeFundraising::Application.routes.draw do
  root :to => "home#index"

  match "confirmation", to: "confirmation#index", via: [:get]
end
