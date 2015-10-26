Rails.application.routes.draw do
  root "home#index"

  get "/csrf" => "application#csrf"
  get "/news.xml" => "news#index", format: "xml"

  %w[companies developers members roadmap rubygems team].each do |page|
    get "/#{page}" => "home##{page}"
  end

  redirects = {
    "/benefits" => "/",
    "/contact" => "/",
    "/friends" => "/developers",
    "/join" => "/#join",
    "/plans" => "/roadmap",
    "/projects" => "/roadmap",
    "/why" => "/developers",
    "/membership/new" => "/companies"
  }

  redirects.each do |page, destination|
    get page, to: redirect(destination)
  end

  scope :thanks, as: :thanks do
    %w[friend member newsletter].each do |page|
      get "/#{page}" => "thanks##{page}"
    end
  end

  resource :charge, only: [:create]
  resource :membership, only: [:create, :show, :update, :destroy] do
    collection { post :card }
  end
  resources :news, only: [:index, :show]

  mount StripeEvent::Engine, at: "/stripe/events"
  devise_for :users, path: "", controllers: {sessions: "sessions"}
end
