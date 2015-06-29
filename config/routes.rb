Rails.application.routes.draw do
  root "home#index"

  get "/csrf" => "application#csrf"
  get "/news.xml" => "news#index", format: "xml"

  %w[
    companies
    contact
    developers
    members
    plans
    projects
    rubygems
    team
  ].each do |page|
    get "/#{page}" => "home##{page}"
  end

  scope :thanks, as: :thanks do
    %w[friend member newsletter].each do |page|
      get "/#{page}" => "thanks##{page}"
    end
  end

  resource :charge, only: [:create]
  resource :membership, except: [:edit] do
    collection { post :card }
  end
  resources :news, only: [:index, :show]

  mount StripeEvent::Engine, at: "/stripe/events"
  devise_for :users, path: ""
end
