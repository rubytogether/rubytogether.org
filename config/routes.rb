Rails.application.routes.draw do
  root "home#index"

  get "/csrf" => "application#csrf"
  get "/news.xml" => "news#index", format: "xml"

  %w[
    bylaws
    companies
    conflict_policy
    developers
    example_proposal
    members
    projects
    roadmap
    rubygems
    team
  ].each do |page|
    get "/#{page}" => "home##{page}"
  end

  get "/proposal" => redirect("https://goo.gl/forms/tmom1adui2WOrkzN2")

  redirects = {
    "/benefits" => "/",
    "/contact" => "/",
    "/friends" => "/developers",
    "/join" => "/#join",
    "/membership/new" => "/companies",
    "/plans" => "/roadmap",
    "/why" => "/developers"
  }

  redirects.each do |page, destination|
    get page, to: redirect(path: destination)
  end

  scope :thanks, as: :thanks do
    %w[member newsletter confirmed].each do |page|
      get "/#{page}" => "thanks##{page}"
    end
  end

  resource :charge, only: [:create]
  resources :invoice, only: [:show]
  resource :membership, only: [:create, :show, :update, :destroy] do
    collection { post :card }
  end
  resources :news, only: [:index, :show]

  mount StripeEvent::Engine, at: "/stripe/events"
  devise_for :users, path: "", controllers: {sessions: "sessions"}
end
