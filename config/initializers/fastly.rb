require "fastly"

class FastlyRails
  cattr_accessor :service

  def self.purge_by_key(key)
    self.service&.purge_by_key(key)
  end

  def self.purge_all
    self.service&.purge_all
  end
end

if ENV.has_key?("FASTLY_SERVICE_ID")
  fastly = Fastly.new(api_key: ENV.fetch("FASTLY_API_KEY"))
  FastlyRails.service = Fastly::Service.new({id: ENV.fetch("FASTLY_SERVICE_ID")}, fastly)
end

