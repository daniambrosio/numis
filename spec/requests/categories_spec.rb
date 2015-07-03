require 'rails_helper'
require 'support/controller_macros.rb'
require 'support/valid_user_request_helper.rb'

RSpec.describe "Categories", type: :request do

  describe "GET /categories" do
    it "test access to categories, works with a signed in user" do
      sign_in_as_a_user
      get categories_path
      expect(response).to have_http_status(200)
    end
  end

  describe "GET /categories" do
    it "test access to categories, does not work without a signed in user" do
      get categories_path
      expect(response).to have_http_status(302) # redirect to sign in page
    end
  end

end
