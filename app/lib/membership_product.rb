MembershipProduct = Struct.new(:id, :shortname, :name) do

  PRODUCT_MAP = {
    developer_small: {name: 'Developer Membership (Small)', shortname: 'developer'},
    developer_medium: {name: 'Developer Membership (Medium)', shortname: 'developer'},
    developer_large: {name: 'Developer Membership (Large)', shortname: 'developer'},
    corporate_emerald: {name: 'Emerald Membership', shortname: 'Emerald'},
    corporate_sapphire: {name: 'Sapphire Membership', shortname: 'Sapphire'},
    corporate_ruby: {name: 'Ruby Membership', shortname: 'Ruby'},
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
    developer_ids + company_ids
  end

  def self.developer_ids
    [:developer_small, :developer_medium, :developer_large]
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
