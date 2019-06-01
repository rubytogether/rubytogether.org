MembershipProduct = Struct.new(:id, :shortname, :name) do

  PRODUCT_MAP = {
    individual_small: {name: 'Personal Member (Small)', shortname: 'personal'},
    individual_medium: {name: 'Personal Member (Medium)', shortname: 'personal'},
    individual_large: {name: 'Personal Member (Large)', shortname: 'personal'},
    corporate_emerald: {name: 'Emerald Member', shortname: 'Emerald'},
    corporate_sapphire: {name: 'Sapphire Member', shortname: 'Sapphire'},
    corporate_ruby: {name: 'Ruby Member', shortname: 'Ruby'},
  }.map{|id, i| [id, new(id, i[:shortname], i[:name])] }.to_h

  def self.all
    PRODUCT_MAP.values
  end

  def self.[](id)
    PRODUCT_MAP[id]
  end

  def self.named(name)
    @names ||= all.map{|prod| [prod.name, prod] }.to_h
    @names[name]
  end

  def self.sorted_ids
    individual_ids + company_ids
  end

  def self.individual_ids
    [:individual_small, :individual_medium, :individual_large]
  end

  def self.company_ids
    nonfeatured_ids + featured_ids
  end

  def self.featured_ids
    [:corporate_sapphire, :corporate_ruby]
  end

  def self.nonfeatured_ids
    [:corporate_emerald]
  end


  def self.stripe_products
    @stripe_products ||= Stripe::Product.all.auto_paging_each.to_a
  end

  def self.reload_stripe_products!
    @stripe_products = nil
    stripe_products
  end

  def stripe_product
    self.class.stripe_products.find{|product| product.name == name }
  end

  def stripe_id
    stripe_product.id
  end

end
