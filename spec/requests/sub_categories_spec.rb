require 'rails_helper'

RSpec.describe "SubCategories", type: :request do
  describe "GET /sub_categories" do
    it "works! (now write some real specs)" do
      get sub_categories_path
      expect(response).to have_http_status(200)
    end
  end
end
