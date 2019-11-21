module StripeEvent
  class Base

    def stripe_customer_for_event(event)
      Stripe::Customer.retrieve(event.data.object.customer).tap do |customer|
        customer = nil if customer.respond_to?(:deleted?) && customer.deleted?
      end
    end

    def user_for_event(event)
      customer = stripe_customer_for_event(event)
      return nil if customer.nil?

      event_user = User.includes(:membership).where(stripe_id: customer.id).first
      return nil if event_user.nil?

      event_user.stripe_customer = customer
      Rollbar.scope!(person: {id: event_user.id, email: event_user.email})
      event_user
    end

    def user_subscription_for_event(for_user, for_event)
      event_object = for_event.data.object
      case event_object
      when Stripe::Subscription
        event_object
      when Stripe::Invoice
        for_user.stripe_customer.subscriptions.find do |subscription|
          subscription.id == event_object.subscription
        end
      else
        raise "oh no: #{for_event.inspect}"
      end
    end

  end
end
