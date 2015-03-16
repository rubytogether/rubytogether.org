require 'rails_helper'

RSpec.describe NewsController, type: :controller do
  describe "blog posts" do
    subject(:response) { get "2015-03-17-announcing-ruby-together" }

    it "render" do
      get "2015-03-17-announcing-ruby-together"
      expect(response.code).to eq("200")
      expect(response).to render_template "news/2015-03-17-announcing-ruby-together"
    end
  end
end
