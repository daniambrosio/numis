require 'rails_helper'

RSpec.describe "banks/show", type: :view do
  before(:each) do
    @bank = assign(:bank, Bank.create!(
      :name => "Citibank"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
  end
end
