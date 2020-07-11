# == Route Map
#
#                    Prefix Verb   URI Pattern                                                                              Controller#Action
#                      root GET    /                                                                                        home#index
#                      csrf GET    /csrf(.:format)                                                                          application#csrf
#                           GET    /news.xml(.:format)                                                                      news#index {:format=>/xml/}
#                    bylaws GET    /bylaws(.:format)                                                                        home#bylaws
#                 companies GET    /companies(.:format)                                                                     home#companies
#           conflict_policy GET    /conflict_policy(.:format)                                                               home#conflict_policy
#                developers GET    /developers(.:format)                                                                    home#developers
#          example_proposal GET    /example_proposal(.:format)                                                              home#example_proposal
#                   members GET    /members(.:format)                                                                       home#members
#                  projects GET    /projects(.:format)                                                                      home#projects
#                   roadmap GET    /roadmap(.:format)                                                                       home#roadmap
#                  rubygems GET    /rubygems(.:format)                                                                      home#rubygems
#                      team GET    /team(.:format)                                                                          home#team
#                  proposal GET    /proposal(.:format)                                                                      redirect(301, https://goo.gl/forms/tmom1adui2WOrkzN2)
#                  benefits GET    /benefits(.:format)                                                                      redirect(301, path: /)
#                   contact GET    /contact(.:format)                                                                       redirect(301, path: /)
#                   friends GET    /friends(.:format)                                                                       redirect(301, path: /developers)
#                      join GET    /join(.:format)                                                                          redirect(301, path: /#join)
#            membership_new GET    /membership/new(.:format)                                                                redirect(301, path: /companies)
#                     plans GET    /plans(.:format)                                                                         redirect(301, path: /roadmap)
#                       why GET    /why(.:format)                                                                           redirect(301, path: /developers)
#             thanks_member GET    /thanks/member(.:format)                                                                 thanks#member
#         thanks_newsletter GET    /thanks/newsletter(.:format)                                                             thanks#newsletter
#          thanks_confirmed GET    /thanks/confirmed(.:format)                                                              thanks#confirmed
#                    charge POST   /charge(.:format)                                                                        charges#create
#                   invoice GET    /invoice/:id(.:format)                                                                   invoice#show
#           card_membership POST   /membership/card(.:format)                                                               memberships#card
#                membership GET    /membership(.:format)                                                                    memberships#show
#                           PATCH  /membership(.:format)                                                                    memberships#update
#                           PUT    /membership(.:format)                                                                    memberships#update
#                           DELETE /membership(.:format)                                                                    memberships#destroy
#                           POST   /membership(.:format)                                                                    memberships#create
#                news_index GET    /news(.:format)                                                                          news#index
#                      news GET    /news/:id(.:format)                                                                      news#show
#              stripe_event        /stripe/events                                                                           StripeEvent::Engine
#          new_user_session GET    /sign_in(.:format)                                                                       sessions#new
#              user_session POST   /sign_in(.:format)                                                                       sessions#create
#      destroy_user_session DELETE /sign_out(.:format)                                                                      sessions#destroy
#         new_user_password GET    /password/new(.:format)                                                                  devise/passwords#new
#        edit_user_password GET    /password/edit(.:format)                                                                 devise/passwords#edit
#             user_password PATCH  /password(.:format)                                                                      devise/passwords#update
#                           PUT    /password(.:format)                                                                      devise/passwords#update
#                           POST   /password(.:format)                                                                      devise/passwords#create
#
# Routes for StripeEvent::Engine:
#   root POST /           stripe_event/webhook#event

Rails.application.routes.draw do
  root "comfy/cms/content#show"

  get "/csrf" => "application#csrf"
  get "/news.xml" => "news#index", format: "xml"

  comfy_route :cms_admin, path: "/admin"

  %w[
    bylaws
    companies
    conflict_policy
    developers
    example_proposal
    members
    projects
    roadmap
    rubygems
    team
  ].each do |page|
    get "/#{page}" => "home##{page}"
  end

  get "/proposal" => redirect("https://goo.gl/forms/tmom1adui2WOrkzN2")

  redirects = {
    "/benefits" => "/",
    "/contact" => "/",
    "/friends" => "/developers",
    "/join" => "/#join",
    "/membership/new" => "/companies",
    "/plans" => "/roadmap",
    "/why" => "/developers"
  }

  redirects.each do |page, destination|
    get page, to: redirect(path: destination)
  end

  scope :thanks, as: :thanks do
    %w[member newsletter confirmed].each do |page|
      get "/#{page}" => "thanks##{page}"
    end
  end

  resource :charge, only: [:create]
  resources :invoice, only: [:show]
  resource :membership, only: [:create, :show, :update, :destroy] do
    collection { post :card }
  end
  resources :news, only: [:index, :show]

  mount StripeEvent::Engine, at: "/stripe/events"
  devise_for :users, path: "", controllers: {sessions: "sessions"}

  comfy_route :cms, path: "/"
end
