require 'devise'
require 'support/controller_macros.rb'
require 'support/valid_user_request_helper.rb'

RSpec.configure do |config|

  # DAmbrosio: setup devise to work with rspec
  #
  config.include Devise::TestHelpers, :type => :controller
  config.extend ControllerMacros, :type => :controller
  config.include ValidUserRequestHelper, :type => :request

end
