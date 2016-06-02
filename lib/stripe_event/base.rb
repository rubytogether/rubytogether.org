module StripeEvent
  class Base

    def user_for_event(event)
      customer = Stripe::Customer.retrieve(event.data.object.customer)
      return nil if customer.respond_to?(:deleted?) && customer.deleted?

      event_user = User.includes(:membership).where(stripe_id: customer.id).first
      return nil if event_user.nil?

      event_user.stripe_customer = customer
      Rollbar.scope!(person: {id: event_user.id, email: event_user.email})
      event_user
    end

    def user_subscription_for_event(for_user, for_event)
      for_user.stripe_customer.subscriptions.find do |subscription|
        subscription.id == for_event.data.object.subscription
      end
    end

  end
end
