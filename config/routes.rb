Rails.application.routes.draw do
  root "home#index"

  %w[benefits contact members projects team].each do |page|
    get "/#{page}" => "home##{page}"
  end

  get "/join" => "memberships#new"

  devise_for :users
end
