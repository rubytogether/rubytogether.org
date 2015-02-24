Rails.application.routes.draw do
  root "home#index"

  %w[benefits contact join members plans projects team].each do |page|
    get "/#{page}" => "home##{page}"
  end

  post "/join" => "membership#create"

  constraints subdomain: "members" do
    devise_for :users
    resource :membership, only: [:show]
  end

end
