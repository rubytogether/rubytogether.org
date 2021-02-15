# == Route Map
#
#                                                Prefix Verb   URI Pattern                                                                                      Controller#Action
#                                    rails_service_blob GET    /rails/active_storage/blobs/:signed_id/*filename(.:format)                                       active_storage/blobs#show
#                             rails_blob_representation GET    /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format)         active_storage/representations#show
#                                    rails_disk_service GET    /rails/active_storage/disk/:encoded_key/*filename(.:format)                                      active_storage/disk#show
#                             update_rails_disk_service PUT    /rails/active_storage/disk/:encoded_token(.:format)                                              active_storage/disk#update
#                                  rails_direct_uploads POST   /rails/active_storage/direct_uploads(.:format)                                                   active_storage/direct_uploads#create
#                                                  root GET    /                                                                                                comfy/cms/content#show
#                                                  csrf GET    /csrf(.:format)                                                                                  application#csrf
#                                                       GET    /news.xml(.:format)                                                                              news#index {:format=>/xml/}
#                  form_fragments_comfy_admin_blog_post GET    /admin/sites/:site_id/blog-posts/:id/form_fragments(.:format)                                    comfy/admin/blog/posts#form_fragments
#                 revert_comfy_admin_blog_post_revision PATCH  /admin/sites/:site_id/blog-posts/:blog_post_id/revisions/:id/revert(.:format)                    comfy/admin/blog/revisions/post#revert
#                       comfy_admin_blog_post_revisions GET    /admin/sites/:site_id/blog-posts/:blog_post_id/revisions(.:format)                               comfy/admin/blog/revisions/post#index
#                        comfy_admin_blog_post_revision GET    /admin/sites/:site_id/blog-posts/:blog_post_id/revisions/:id(.:format)                           comfy/admin/blog/revisions/post#show
#                                comfy_admin_blog_posts GET    /admin/sites/:site_id/blog-posts(.:format)                                                       comfy/admin/blog/posts#index
#                                                       POST   /admin/sites/:site_id/blog-posts(.:format)                                                       comfy/admin/blog/posts#create
#                             new_comfy_admin_blog_post GET    /admin/sites/:site_id/blog-posts/new(.:format)                                                   comfy/admin/blog/posts#new
#                            edit_comfy_admin_blog_post GET    /admin/sites/:site_id/blog-posts/:id/edit(.:format)                                              comfy/admin/blog/posts#edit
#                                 comfy_admin_blog_post PATCH  /admin/sites/:site_id/blog-posts/:id(.:format)                                                   comfy/admin/blog/posts#update
#                                                       PUT    /admin/sites/:site_id/blog-posts/:id(.:format)                                                   comfy/admin/blog/posts#update
#                                                       DELETE /admin/sites/:site_id/blog-posts/:id(.:format)                                                   comfy/admin/blog/posts#destroy
#                                       comfy_admin_cms GET    /admin(.:format)                                                                                 comfy/admin/cms/base#jump
#                    reorder_comfy_admin_cms_site_pages PUT    /admin/sites/:site_id/pages/reorder(.:format)                                                    comfy/admin/cms/pages#reorder
#              form_fragments_comfy_admin_cms_site_page GET    /admin/sites/:site_id/pages/:id/form_fragments(.:format)                                         comfy/admin/cms/pages#form_fragments
#             revert_comfy_admin_cms_site_page_revision PATCH  /admin/sites/:site_id/pages/:page_id/revisions/:id/revert(.:format)                              comfy/admin/cms/revisions/page#revert
#                   comfy_admin_cms_site_page_revisions GET    /admin/sites/:site_id/pages/:page_id/revisions(.:format)                                         comfy/admin/cms/revisions/page#index
#                    comfy_admin_cms_site_page_revision GET    /admin/sites/:site_id/pages/:page_id/revisions/:id(.:format)                                     comfy/admin/cms/revisions/page#show
#               toggle_branch_comfy_admin_cms_site_page GET    /admin/sites/:site_id/pages/:id/toggle_branch(.:format)                                          comfy/admin/cms/pages#toggle_branch
#  form_fragments_comfy_admin_cms_site_page_translation GET    /admin/sites/:site_id/pages/:page_id/translations/:id/form_fragments(.:format)                   comfy/admin/cms/translations#form_fragments
# revert_comfy_admin_cms_site_page_translation_revision PATCH  /admin/sites/:site_id/pages/:page_id/translations/:translation_id/revisions/:id/revert(.:format) comfy/admin/cms/revisions/translation#revert
#       comfy_admin_cms_site_page_translation_revisions GET    /admin/sites/:site_id/pages/:page_id/translations/:translation_id/revisions(.:format)            comfy/admin/cms/revisions/translation#index
#        comfy_admin_cms_site_page_translation_revision GET    /admin/sites/:site_id/pages/:page_id/translations/:translation_id/revisions/:id(.:format)        comfy/admin/cms/revisions/translation#show
#                comfy_admin_cms_site_page_translations POST   /admin/sites/:site_id/pages/:page_id/translations(.:format)                                      comfy/admin/cms/translations#create
#             new_comfy_admin_cms_site_page_translation GET    /admin/sites/:site_id/pages/:page_id/translations/new(.:format)                                  comfy/admin/cms/translations#new
#            edit_comfy_admin_cms_site_page_translation GET    /admin/sites/:site_id/pages/:page_id/translations/:id/edit(.:format)                             comfy/admin/cms/translations#edit
#                 comfy_admin_cms_site_page_translation GET    /admin/sites/:site_id/pages/:page_id/translations/:id(.:format)                                  comfy/admin/cms/translations#show
#                                                       PATCH  /admin/sites/:site_id/pages/:page_id/translations/:id(.:format)                                  comfy/admin/cms/translations#update
#                                                       PUT    /admin/sites/:site_id/pages/:page_id/translations/:id(.:format)                                  comfy/admin/cms/translations#update
#                                                       DELETE /admin/sites/:site_id/pages/:page_id/translations/:id(.:format)                                  comfy/admin/cms/translations#destroy
#                            comfy_admin_cms_site_pages GET    /admin/sites/:site_id/pages(.:format)                                                            comfy/admin/cms/pages#index
#                                                       POST   /admin/sites/:site_id/pages(.:format)                                                            comfy/admin/cms/pages#create
#                         new_comfy_admin_cms_site_page GET    /admin/sites/:site_id/pages/new(.:format)                                                        comfy/admin/cms/pages#new
#                        edit_comfy_admin_cms_site_page GET    /admin/sites/:site_id/pages/:id/edit(.:format)                                                   comfy/admin/cms/pages#edit
#                             comfy_admin_cms_site_page PATCH  /admin/sites/:site_id/pages/:id(.:format)                                                        comfy/admin/cms/pages#update
#                                                       PUT    /admin/sites/:site_id/pages/:id(.:format)                                                        comfy/admin/cms/pages#update
#                                                       DELETE /admin/sites/:site_id/pages/:id(.:format)                                                        comfy/admin/cms/pages#destroy
#                    reorder_comfy_admin_cms_site_files PUT    /admin/sites/:site_id/files/reorder(.:format)                                                    comfy/admin/cms/files#reorder
#                            comfy_admin_cms_site_files GET    /admin/sites/:site_id/files(.:format)                                                            comfy/admin/cms/files#index
#                                                       POST   /admin/sites/:site_id/files(.:format)                                                            comfy/admin/cms/files#create
#                         new_comfy_admin_cms_site_file GET    /admin/sites/:site_id/files/new(.:format)                                                        comfy/admin/cms/files#new
#                        edit_comfy_admin_cms_site_file GET    /admin/sites/:site_id/files/:id/edit(.:format)                                                   comfy/admin/cms/files#edit
#                             comfy_admin_cms_site_file PATCH  /admin/sites/:site_id/files/:id(.:format)                                                        comfy/admin/cms/files#update
#                                                       PUT    /admin/sites/:site_id/files/:id(.:format)                                                        comfy/admin/cms/files#update
#                                                       DELETE /admin/sites/:site_id/files/:id(.:format)                                                        comfy/admin/cms/files#destroy
#                  reorder_comfy_admin_cms_site_layouts PUT    /admin/sites/:site_id/layouts/reorder(.:format)                                                  comfy/admin/cms/layouts#reorder
#           revert_comfy_admin_cms_site_layout_revision PATCH  /admin/sites/:site_id/layouts/:layout_id/revisions/:id/revert(.:format)                          comfy/admin/cms/revisions/layout#revert
#                 comfy_admin_cms_site_layout_revisions GET    /admin/sites/:site_id/layouts/:layout_id/revisions(.:format)                                     comfy/admin/cms/revisions/layout#index
#                  comfy_admin_cms_site_layout_revision GET    /admin/sites/:site_id/layouts/:layout_id/revisions/:id(.:format)                                 comfy/admin/cms/revisions/layout#show
#                          comfy_admin_cms_site_layouts GET    /admin/sites/:site_id/layouts(.:format)                                                          comfy/admin/cms/layouts#index
#                                                       POST   /admin/sites/:site_id/layouts(.:format)                                                          comfy/admin/cms/layouts#create
#                       new_comfy_admin_cms_site_layout GET    /admin/sites/:site_id/layouts/new(.:format)                                                      comfy/admin/cms/layouts#new
#                      edit_comfy_admin_cms_site_layout GET    /admin/sites/:site_id/layouts/:id/edit(.:format)                                                 comfy/admin/cms/layouts#edit
#                           comfy_admin_cms_site_layout PATCH  /admin/sites/:site_id/layouts/:id(.:format)                                                      comfy/admin/cms/layouts#update
#                                                       PUT    /admin/sites/:site_id/layouts/:id(.:format)                                                      comfy/admin/cms/layouts#update
#                                                       DELETE /admin/sites/:site_id/layouts/:id(.:format)                                                      comfy/admin/cms/layouts#destroy
#                 reorder_comfy_admin_cms_site_snippets PUT    /admin/sites/:site_id/snippets/reorder(.:format)                                                 comfy/admin/cms/snippets#reorder
#          revert_comfy_admin_cms_site_snippet_revision PATCH  /admin/sites/:site_id/snippets/:snippet_id/revisions/:id/revert(.:format)                        comfy/admin/cms/revisions/snippet#revert
#                comfy_admin_cms_site_snippet_revisions GET    /admin/sites/:site_id/snippets/:snippet_id/revisions(.:format)                                   comfy/admin/cms/revisions/snippet#index
#                 comfy_admin_cms_site_snippet_revision GET    /admin/sites/:site_id/snippets/:snippet_id/revisions/:id(.:format)                               comfy/admin/cms/revisions/snippet#show
#                         comfy_admin_cms_site_snippets GET    /admin/sites/:site_id/snippets(.:format)                                                         comfy/admin/cms/snippets#index
#                                                       POST   /admin/sites/:site_id/snippets(.:format)                                                         comfy/admin/cms/snippets#create
#                      new_comfy_admin_cms_site_snippet GET    /admin/sites/:site_id/snippets/new(.:format)                                                     comfy/admin/cms/snippets#new
#                     edit_comfy_admin_cms_site_snippet GET    /admin/sites/:site_id/snippets/:id/edit(.:format)                                                comfy/admin/cms/snippets#edit
#                          comfy_admin_cms_site_snippet PATCH  /admin/sites/:site_id/snippets/:id(.:format)                                                     comfy/admin/cms/snippets#update
#                                                       PUT    /admin/sites/:site_id/snippets/:id(.:format)                                                     comfy/admin/cms/snippets#update
#                                                       DELETE /admin/sites/:site_id/snippets/:id(.:format)                                                     comfy/admin/cms/snippets#destroy
#                       comfy_admin_cms_site_categories GET    /admin/sites/:site_id/categories(.:format)                                                       comfy/admin/cms/categories#index
#                                                       POST   /admin/sites/:site_id/categories(.:format)                                                       comfy/admin/cms/categories#create
#                     new_comfy_admin_cms_site_category GET    /admin/sites/:site_id/categories/new(.:format)                                                   comfy/admin/cms/categories#new
#                    edit_comfy_admin_cms_site_category GET    /admin/sites/:site_id/categories/:id/edit(.:format)                                              comfy/admin/cms/categories#edit
#                         comfy_admin_cms_site_category PATCH  /admin/sites/:site_id/categories/:id(.:format)                                                   comfy/admin/cms/categories#update
#                                                       PUT    /admin/sites/:site_id/categories/:id(.:format)                                                   comfy/admin/cms/categories#update
#                                                       DELETE /admin/sites/:site_id/categories/:id(.:format)                                                   comfy/admin/cms/categories#destroy
#                                 comfy_admin_cms_sites GET    /admin/sites(.:format)                                                                           comfy/admin/cms/sites#index
#                                                       POST   /admin/sites(.:format)                                                                           comfy/admin/cms/sites#create
#                              new_comfy_admin_cms_site GET    /admin/sites/new(.:format)                                                                       comfy/admin/cms/sites#new
#                             edit_comfy_admin_cms_site GET    /admin/sites/:id/edit(.:format)                                                                  comfy/admin/cms/sites#edit
#                                  comfy_admin_cms_site PATCH  /admin/sites/:id(.:format)                                                                       comfy/admin/cms/sites#update
#                                                       PUT    /admin/sites/:id(.:format)                                                                       comfy/admin/cms/sites#update
#                                                       DELETE /admin/sites/:id(.:format)                                                                       comfy/admin/cms/sites#destroy
#                                                bylaws GET    /bylaws(.:format)                                                                                home#bylaws
#                                             companies GET    /companies(.:format)                                                                             home#companies
#                                       conflict_policy GET    /conflict_policy(.:format)                                                                       home#conflict_policy
#                                            developers GET    /developers(.:format)                                                                            home#developers
#                                      example_proposal GET    /example_proposal(.:format)                                                                      home#example_proposal
#                                               members GET    /members(.:format)                                                                               home#members
#                                              projects GET    /projects(.:format)                                                                              home#projects
#                                               roadmap GET    /roadmap(.:format)                                                                               home#roadmap
#                                              rubygems GET    /rubygems(.:format)                                                                              home#rubygems
#                                                  team GET    /team(.:format)                                                                                  home#team
#                                              proposal GET    /proposal(.:format)                                                                              redirect(301, https://goo.gl/forms/tmom1adui2WOrkzN2)
#                                              benefits GET    /benefits(.:format)                                                                              redirect(301, path: /)
#                                               contact GET    /contact(.:format)                                                                               redirect(301, path: /)
#                                               friends GET    /friends(.:format)                                                                               redirect(301, path: /developers)
#                                                  join GET    /join(.:format)                                                                                  redirect(301, path: /#join)
#                                        membership_new GET    /membership/new(.:format)                                                                        redirect(301, path: /companies)
#                                                 plans GET    /plans(.:format)                                                                                 redirect(301, path: /roadmap)
#                                                   why GET    /why(.:format)                                                                                   redirect(301, path: /developers)
#                                         thanks_member GET    /thanks/member(.:format)                                                                         thanks#member
#                                     thanks_newsletter GET    /thanks/newsletter(.:format)                                                                     thanks#newsletter
#                                      thanks_confirmed GET    /thanks/confirmed(.:format)                                                                      thanks#confirmed
#                                                charge POST   /charge(.:format)                                                                                charges#create
#                                               invoice GET    /invoice/:id(.:format)                                                                           invoice#show
#                                       card_membership POST   /membership/card(.:format)                                                                       memberships#card
#                                            membership GET    /membership(.:format)                                                                            memberships#show
#                                                       PATCH  /membership(.:format)                                                                            memberships#update
#                                                       PUT    /membership(.:format)                                                                            memberships#update
#                                                       DELETE /membership(.:format)                                                                            memberships#destroy
#                                                       POST   /membership(.:format)                                                                            memberships#create
#                                          stripe_event        /stripe/events                                                                                   StripeEvent::Engine
#                                      new_user_session GET    /sign_in(.:format)                                                                               sessions#new
#                                          user_session POST   /sign_in(.:format)                                                                               sessions#create
#                                  destroy_user_session DELETE /sign_out(.:format)                                                                              sessions#destroy
#                                     new_user_password GET    /password/new(.:format)                                                                          devise/passwords#new
#                                    edit_user_password GET    /password/edit(.:format)                                                                         devise/passwords#edit
#                                         user_password PATCH  /password(.:format)                                                                              devise/passwords#update
#                                                       PUT    /password(.:format)                                                                              devise/passwords#update
#                                                       POST   /password(.:format)                                                                              devise/passwords#create
#                              comfy_blog_posts_of_year GET    (/:cms_path)/news/:year(.:format)                                                                comfy/blog/posts#index {:year=>/\d{4}/}
#                             comfy_blog_posts_of_month GET    (/:cms_path)/news/:year/:month(.:format)                                                         comfy/blog/posts#index {:year=>/\d{4}/, :month=>/\d{1,2}/}
#                                       comfy_blog_post GET    (/:cms_path)/news/:year/:month/:slug(.:format)                                                   comfy/blog/posts#show {:year=>/\d{4}/, :month=>/\d{1,2}/}
#                                      comfy_blog_posts GET    (/:cms_path)/news(.:format)                                                                      comfy/blog/posts#index
#                                  comfy_cms_render_css GET    /cms-css/:site_id/:identifier(/:cache_buster)(.:format)                                          comfy/cms/assets#render_css
#                                   comfy_cms_render_js GET    /cms-js/:site_id/:identifier(/:cache_buster)(.:format)                                           comfy/cms/assets#render_js
#                                 comfy_cms_render_page GET    /(*cms_path)(.:format)                                                                           comfy/cms/content#show
#
# Routes for StripeEvent::Engine:
#   root POST /           stripe_event/webhook#event

Rails.application.routes.draw do
  root "home#index"
  get "/csrf" => "application#csrf"

  get "/members" => "home#members"

  get "/news.xml" => "comfy/blog/posts#index", format: "rss"
  get "/news/:year-:month-:day-:slug" => "comfy/blog/posts#show", year: /\d{4}/, month: /\d{2}/, day: /\d{2}/, as: :news
  get "/news" => "comfy/blog/posts#index", as: :news_index
  comfy_route :blog, path: "/news"

  %w[
    bylaws
    conflict_policy
    companies
    developers
    example_proposal
    projects
    roadmap
    rubygems
    team
  ].each do |page|
    get "/#{page}" => "comfy/cms/content#show", cms_path: page
  end

  {
    "/benefits" => "/",
    "/contact" => "/",
    "/friends" => "/developers",
    "/join" => "/#join",
    "/membership/new" => "/companies",
    "/plans" => "/roadmap",
    "/why" => "/developers",
  }.each do |page, destination|
    get page, to: redirect(path: destination)
  end
  get "/proposal", to: redirect("https://goo.gl/forms/tmom1adui2WOrkzN2")

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

  mount StripeEvent::Engine, at: "/stripe/events"
  devise_for :users, path: "", controllers: {sessions: "sessions"}

  comfy_route_blog_admin path: "/admin"
  comfy_route_cms_admin path: "/admin"
  comfy_route_cms path: "/"
end
