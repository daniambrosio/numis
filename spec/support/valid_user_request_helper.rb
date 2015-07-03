# module for helping request specs
module ValidUserRequestHelper
  include Warden::Test::Helpers

  # for use in request specs
  def sign_in_as_a_user
    # @user ||= FactoryGirl.create :confirmed_user
    # login_as @user
    # @request.env["devise.mapping"] = Devise.mappings[:user]
    user = FactoryGirl.create(:user)
    user.confirm! # or set a confirmed_at inside the factory. Only necessary if you are using the "confirmable" module
    login_as user
  end


  # for use in request specs
  def sign_in_as_a_valid_user
    @user ||= FactoryGirl.create :user
    post_via_redirect user_session_path, 'user[email]' => @user.email, 'user[password]' => @user.password
    # post_via_redirect user_session_path, 'user[email]' => user.email, 'user[password]' => user.password
  end
end

