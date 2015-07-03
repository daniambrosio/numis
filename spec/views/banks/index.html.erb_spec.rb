require 'rails_helper'

RSpec.describe "banks/index", type: :view do
  before(:each) do
    assign(:banks, [
      Bank.create!(
        :name => "Citibank"
      ),
      Bank.create!(
        :name => "HSBC"
      )
    ])
  end

  it "renders a list of banks" do
    render
    assert_select "tr>td", :text => "Citibank".to_s, :count => 1
    assert_select "tr>td", :text => "HSBC".to_s, :count => 1
  end
end
