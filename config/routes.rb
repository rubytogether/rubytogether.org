Rails.application.routes.draw do
  root "home#index"

  get "/csrf" => "application#csrf"
  get "/news.xml" => "news#index", format: "xml"

  %w[
    benefits
    companies
    contact
    developers
    friends
    join
    members
    newsletter
    plans
    projects
    rubygems
    team
    welcome
    why
  ].each do |page|
    get "/#{page}" => "home##{page}"
  end

  mount StripeEvent::Engine, at: "/stripe/events"

  devise_for :users, path: ""

  resource :membership, except: [:edit] do
    collection { post :card }
  end
  resource :charge, only: [:create]
  resources :news, only: [:index, :show]
end
