if ENV.has_key?("BANK_INFO")
  require 'base64'
  Rails.configuration.bank_info = JSON.parse(Base64.decode64(ENV["BANK_INFO"]))
end