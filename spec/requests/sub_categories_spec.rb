require 'rails_helper'
require 'support/controller_macros.rb'
require 'support/valid_user_request_helper.rb'

RSpec.describe "SubCategories", type: :request do

  describe "GET /sub_categories" do
    it "test access to sub_categories, works with a signed in user" do
      sign_in_as_a_user
      category = FactoryGirl.create(:category1)
      get category_sub_categories_path(:category_id => category.id)
      expect(response).to have_http_status(200)
    end
  end

  describe "GET /sub_categories" do
    it "test access to sub_categories, does not work without a signed in user" do
      category = FactoryGirl.create(:category1)
      get category_sub_categories_path(:category_id => category.id)
      expect(response).to have_http_status(302) # redirect to sign in page
    end
  end

end

