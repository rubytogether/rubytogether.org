Rails.application.routes.draw do
  root "home#index"

  %w[benefits contact join members plans projects team].each do |page|
    get "/#{page}" => "home##{page}"
  end

  devise_for :users, path: ""
  resource :membership, only: [:create, :show] do
    collection { get :metadata }
  end
end
