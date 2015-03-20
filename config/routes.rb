Rails.application.routes.draw do
  root "home#index"

  get "/csrf" => "application#csrf"

  %w[
    benefits
    companies
    contact
    join
    members
    plans
    projects
    rubygems
    team
    why
  ].each do |page|
    get "/#{page}" => "home##{page}"
  end

  mount StripeEvent::Engine, at: "/stripe/events"

  devise_for :users, path: ""

  resource :membership do
    collection { post :card }
  end
  resources :news, only: [:index, :show]

end
