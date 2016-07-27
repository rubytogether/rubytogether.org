module StripeEvent
  module Customer
    module Source
      class Created < Base

        def call(event)
          card = event.data.object
          user_id = User.where(stripe_id: card.customer).pluck(:id).first
          membership = Membership.where(user_id: user_id).first!
          membership.update!(card_brand: card.brand, card_last4: card.last4)
        end

      end
    end
  end
end
