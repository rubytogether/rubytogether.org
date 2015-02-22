Rails.application.routes.draw do
  root "home#index"

  %w[benefits contact join members projects team].each do |page|
    get "/#{page}" => "home##{page}"
  end

  resource :membership, only: [:create]

  devise_for :users
end
