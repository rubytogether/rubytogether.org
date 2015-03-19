Rails.application.routes.draw do
  root "home#index"

  get "/csrf" => "application#csrf"

  %w[benefits contact join members plans projects rubygems team].each do |page|
    get "/#{page}" => "home##{page}"
  end

  get "/news/:action", controller: "news"

  devise_for :users, path: ""
  resource :membership do
    collection { post :card }
  end

end
