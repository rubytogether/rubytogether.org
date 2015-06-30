module StripeEvent
  class Base

    def user_for_event(event)
      customer = Stripe::Customer.retrieve(event.data.object.customer)
      return if customer.respond_to?(:deleted) && customer.deleted

      user = User.includes(:membership).where(stripe_id: customer.id).first
      user.stripe_customer = customer if user
      user
    end

  end
end