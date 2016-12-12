require 'stripe_event/base'

module StripeEvent
  module Customer
    module Source
      class Created < Base

        def call(event)
          card = event.data.object
          user = User.where(stripe_id: card.customer).first!
          membership = Membership.where(user: user).first!
          membership.update!(card_brand: card.brand, card_last4: card.last4)
        rescue ActiveRecord::RecordNotFound => e
          # Stripe is trying to tell us about a user we don't have :(
          Rollbar.error(e)
        end

      end
    end
  end
end
