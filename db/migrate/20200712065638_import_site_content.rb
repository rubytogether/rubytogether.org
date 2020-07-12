class ImportSiteContent < ActiveRecord::Migration[6.0]
  def change
    Comfy::Cms::Site.create!(
      label: "Ruby Together",
      identifier: "ruby-together",
      hostname: Rails.application.routes.default_url_options.fetch(:host),
      locale: "en"
    )
    ComfortableMexicanSofa::Seeds::Importer.new("ruby-together", "ruby-together").import!
  end
end
