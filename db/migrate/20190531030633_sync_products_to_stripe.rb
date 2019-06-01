class SyncProductsToStripe < ActiveRecord::Migration[5.2]
  def up
    MembershipProduct.all.each do |product|
      next if product.stripe_product

      Stripe::Product.create(
        name: product.name,
        type: "service",
      )
    end

    MembershipProduct.reload_stripe_products!
  end
end
