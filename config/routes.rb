Rails.application.routes.draw do
  root "home#index"

  %w[benefits contact members projects team].each do |page|
    get "/#{page}" => "home##{page}"
  end

  get "/join" => "memberships#new"
  resource :membership, only: [:create]

  devise_for :users
end
