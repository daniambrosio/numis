require 'rails_helper'
require 'support/controller_macros.rb'
require 'support/valid_user_request_helper.rb'

RSpec.describe "Banks", type: :request do

  describe "GET /banks" do
    it "test access to banks, works with a signed in user" do
      sign_in_as_a_user
      get banks_path
      expect(response).to have_http_status(200)
    end
  end

  describe "GET /banks" do
    it "test access to banks, does not work without a signed in user" do
      get banks_path
      expect(response).to have_http_status(302) # redirect to sign in page
    end
  end

end
