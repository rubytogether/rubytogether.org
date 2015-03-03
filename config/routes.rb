Rails.application.routes.draw do
  root "home#index"

  get "/csrf" => "application#csrf"

  %w[benefits contact join members plans projects team].each do |page|
    get "/#{page}" => "home##{page}"
  end

  devise_for :users, path: ""
  resource :membership, except: [:new]
end
