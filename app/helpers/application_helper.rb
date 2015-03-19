module ApplicationHelper

  def title(text = nil)
    if text
      @title = text
    else
      @title
    end
  end

  def contact_us
    link_to "contact us", "mailto:hello@rubytogether.org"
  end

  def bundler
    content_tag :a, "Bundler", href: "http://bundler.io"
  end

  def rubygems
    content_tag :a, "RubyGems", href: "https://rubygems.org/pages/download"
  end

  def rubygems_org
    content_tag :a, "RubyGems.org", href: "http://rubygems.org"
  end

  def stripe_meta_tag
    tag :meta, name: "stripe-token",
      content: Rails.configuration.x.stripe_publishable_key
  end

  def link_to_card_form(text, membership)
    link_to(text, "javascript:;",
      "data-subscription" => "update",
      "data-email" => membership.user.email,
      "data-dollar-amount" => membership.dollar_amount
    )
  end

  def link_to_plan(text, name)
    plan = MembershipPlan[name.to_sym]
    dollars = plan.amount / 100
    text.gsub!("$$", "$#{dollars}")
    link_to(text, "javascript:;",
      "data-subscription" => plan.id,
      "data-dollar-amount" => dollars
    )
  end

  def render_layout(parent_layout)
    view_flow.set :layout, capture { yield }
    render template: "layouts/#{parent_layout}"
  end

end
