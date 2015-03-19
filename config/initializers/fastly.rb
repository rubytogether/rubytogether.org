FastlyRails.configure do |c|
  c.api_key    = ENV.fetch("FASTLY_API_KEY")    # Fastly api key, required
  c.service_id = ENV.fetch("FASTLY_SERVICE_ID") # The Fastly service you will be using, required
end if ENV.has_key?("FASTLY_SERVICE_ID")

module FastlyRails

  def self.purge_by_key(key)
    return unless configuration.service_id
    client.purge_by_key(key)
  end

  def self.service
    return unless configuration.service_id
    client.get_service(configuration.service_id)
  end

end