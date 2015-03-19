FastlyRails.configure do |c|
  c.api_key    = ENV.fetch("FASTLY_API_KEY")    # Fastly api key, required
  c.service_id = ENV.fetch("FASTLY_SERVICE_ID") # The Fastly service you will be using, required
end if ENV.has_key?("FASTLY_SERVICE_ID")
