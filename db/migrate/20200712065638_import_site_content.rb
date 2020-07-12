class ImportSiteContent < ActiveRecord::Migration[6.0]
  def change
    ComfortableMexicanSofa::Seeds::Importer.new("ruby-together", "ruby-together").import!
  end
end
