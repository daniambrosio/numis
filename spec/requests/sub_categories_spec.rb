require 'rails_helper'

RSpec.describe "SubCategories", type: :request do

  describe "GET /sub_categories" do
    it "works! (now write some real specs)" do
      category = FactoryGirl.create(:category1)
      get category_sub_categories_path(:category_id => category.id)
      expect(response).to have_http_status(200)
    end
  end

end
