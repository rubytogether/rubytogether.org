module StripeEvent
  class Base

    def user_for_event(event)
      customer = Stripe::Customer.retrieve(event.data.object.customer)
      return if customer.respond_to?(:deleted) && customer.deleted

      user = User.includes(:membership).where(stripe_id: customer.id).first
      return nil if user.nil?

      user.stripe_customer = customer
      Rollbar.scope!(person: {id: user.id, email: user.email})
      user
    end

  end
end