module ApplicationHelper

  def title(text = nil)
    if text
      @title = text
    else
      @title
    end
  end

  def title_tag
    text = @title || "Ruby Together"
    text += " - Ruby Together" unless text[/ruby together/i]
    content_tag :title, text.gsub(/<br\/?>/, " ")
  end

  def contact_us(text = "contact us")
    text = yield if block_given?
    link_to text, "mailto:hello@rubytogether.org"
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

  def rubybench
    content_tag :a, "RubyBench.org", href: "http://rubybench.org"
  end

  def stripe_meta_tag
    tag :meta, name: "stripe-token",
      content: Rails.configuration.x.stripe_publishable_key
  end

  def iconic_tag(name)
    tag :img, class: "iconic", :"data-src" => "/iconic/#{name}.svg"
  end

  def link_to_tweet(text, tweet, url = nil)
    twitter_url = "https://twitter.com/intent/tweet?text=#{URI.escape(tweet)}"
    twitter_url << "&url=#{URI.escape(url)}" if url
    link_to text, twitter_url
  end

  def link_to_card_form(text, membership)
    link_to(text, "javascript:;",
      "data-subscription" => "update",
      "data-email" => membership.user.email,
      "data-dollar-amount" => membership.dollar_amount,
      "data-subscription-name" => membership.plan.name
    )
  end

  def link_to_plan(text, name, opts = {})
    plan = MembershipPlan[name.to_sym]
    dollars = plan.amount / 100
    text.gsub!("$$", "$#{dollars}")
    link_to(text, "javascript:;", opts.merge(
      "data-subscription" => plan.id,
      "data-dollar-amount" => dollars,
      "data-subscription-name" => plan.name
    ))
  end

  def render_layout(parent_layout)
    view_flow.set :layout, capture { yield }
    render template: "layouts/#{parent_layout}"
  end

  def joined_mail_link(text)
    mail_to("", text,
      subject: "I joined Ruby Together. Here's why you should too.",
      body: "I joined Ruby Together (https://rubytogether.org), a nonprofit that pays developers " \
        "to dedicate time to improving Bundler and other shared Ruby tools. " \
        "\n\nSupporting Ruby Together means we can stop relying on developers " \
        "to fix shared tools in their spare time and start relying on the " \
        "tools themselves. If you're interested in supporting robust Ruby " \
        "tools, check it out!"
      )
  end

  def joined_tweet_link(text)
    link_to_tweet text, "I joined @rubytogether! " \
      "See why you should too, and support Ruby OSS at",
      "https://rubytogether.org"
  end

end
