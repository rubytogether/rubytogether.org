Rails.application.routes.draw do
  root "application#index"

  %w[benefits contact members projects team].each do |page|
    get "/#{page}" => "home##{page}"
  end

  get "/join" => "join#index"

  devise_for :users
end
