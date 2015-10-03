require 'rails_helper'

RSpec.describe NewsController, type: :controller do
  describe "blog posts" do
    subject(:response) { get :show, id: "2015-03-17-announcing-ruby-together" }

    it "renders" do
      expect(response.code).to eq("200")
      expect(response).to render_template "layouts/news"
    end
  end
end
