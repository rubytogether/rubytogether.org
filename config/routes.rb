Rails.application.routes.draw do
  root "application#index"

  %w[benefits contact join members projects team].each do |page|
    get "/#{page}" => "home##{page}"
  end

  devise_for :users
end
