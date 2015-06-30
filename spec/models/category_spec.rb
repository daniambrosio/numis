require 'rails_helper'

RSpec.describe Category do

  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_presence_of(:type) }

  it { is_expected.to have_fields(:name, :type) }

  # if you're declaring 'include Mongoid::Timestamps'
  # or any of 'include Mongoid::Timestamps::Created' and 'Mongoid::Timestamps::Updated'
  it { is_expected.to be_timestamped_document }
  it { is_expected.to be_timestamped_document.with(:created) }
  # it { is_expected.not_to be_timestamped_document.with(:updated) }
  it { is_expected.to be_timestamped_document.with(:updated) }

end
